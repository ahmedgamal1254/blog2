<?php

namespace App\Http\Controllers;

use App\models\Catogesies;
use App\models\Comment;
use App\models\Contact;
use App\models\Page;
use Illuminate\Http\Request;
use App\models\Posts;
use App\models\Theme;
use App\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth')
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    // public function index()
    // {
    //     return view('home')
    // }

    public function dashboard(){
        $count_post=Posts::all()->count();
        $count_themes=Theme::all()->count();
        $count_catogeries=Catogesies::all()->count();
        $count_users=User::all()->count();
        $count_pages=Page::all()->count();
        $count_comment=Comment::all()->count();
        $count_contact=Contact::all()->count();
        $posts=DB::table('posts')->where('soft_delete',1)->orderBy('id','desc')->limit(5)->get();
        $msg=DB::table('contact_us')->orderBy('id','desc')->limit(5)->get();

        $count=DB::table('contact_us')->where('see',0)->count();
        $profile=User::where('email',request()->session()->get('admin'))->get();
        $msgs=DB::table('contact_us')->select('username','id')->orderBy('id','DESC')->limit(5)->get();
        return view('dashboard.index',[
            'count_post' => $count_post,
            'count_theme' => $count_themes,
            'count_cat' => $count_catogeries,
            'count_users' => $count_users,
            'count_pages' => $count_pages,
            'count_comment' => $count_comment,
            'count_contact' => $count_contact,
            'profile'       => $profile,
            'posts' => $posts,
            'msg'   => $msg,
            'count' => $count,
            'message' => $msgs   
        ]);
    }

    public function login_admin(){
        $email=Request('email');
        $pass=Request('password');

        $users = DB::table('users')->where('email', '=', $email)->where('active', '=', 1)->count();
        if($users > 0){
            $users2 = DB::table('users')->where('email', '=', $email)->where('active', '=', 1)->get();
            foreach($users2 as $user){
                if (Hash::check($pass, $user->password)) {
                    session(['admin' => $email]);
                    return redirect()->route('dashboard');
                }else{
                    return redirect()->route('dashboard_login')->with('error_password','this password is not found');
                }
            }
        }else{
            return redirect()->route('dashboard_login')->with('error_username','this username is not found');
        }
    }

    public function profileAdmin(){
        $profile=User::where('email',request()->session()->get('admin'))->get();
        $data=DB::table('users')->join('roles','role_id','=','roles.id')
        ->select('users.*','roles.name as role_name')->where('email',request()->session()->get('admin'))->get();

        $data_cat = DB::table('users')->join('catogeries','user_id','=','users.id')->select('catogeries.id')
        ->where('email',request()->session()->get('admin'))->count();

        $data_articles = DB::table('users')->join('posts','users_id','=','users.id')->select('posts.id')
        ->where('email',request()->session()->get('admin'))->count();

        $data_theme=DB::table('users')->join('themes','user_id','=','users.id')->select('themes.id')
        ->where('email',request()->session()->get('admin'))->count();

        $data_comments=DB::table('users')->join('comments','user_id','=','users.id')->select('comments.id')
        ->where('users.email',request()->session()->get('admin'))->count();

        $data_coment=DB::table('users')->join('comments','user_id','=','users.id')
        ->join('posts','posts.id','=','comments.post_id')
        ->select('users.*','comments.*','posts.title')->where('users.email',request()->session()->get('admin'))
        ->where('comments.active','1')->where('comments.soft_delete',1)
        ->orderBy('comments.id','DESC')->limit(5)->get();

        $data_post=DB::table('users')
        ->join('posts','users_id','=','users.id')
        ->select('users.*','posts.*')->where('users.email',request()->session()->get('admin'))->where('posts.soft_delete',1)
        ->orderBy('posts.id','DESC')->limit(5)->get();

        $count=DB::table('contact_us')->where('see',0)->count();
        $msg=DB::table('contact_us')->select('username','id')->orderBy('id','DESC')->limit(5)->get();
        return view('dashboard.profile',['data' => $data,'profile' => $profile,
            'data_cat' => $data_cat,'data_articles' => $data_articles,
            'data_theme' => $data_theme,'data_comments' => $data_comments,
            'data_comment' => $data_coment,
            'data_post'  => $data_post,
            'count'  => $count,
            'message' => $msg
        ]);
    }

    public function signout_admin(){
        Request()->session()->forget(['admin']);
        return redirect()->route('dashboard_login');
    }
    // public function del_comment(){
    //     //
    // }
}
