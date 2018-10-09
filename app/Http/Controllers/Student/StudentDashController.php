<?php

namespace App\Http\Controllers\Student;

use PDF;
use Auth;
use Illuminate\Http\Request;
use App\Models\Admin\Student;
use App\Http\Controllers\Controller;

class StudentDashController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:student');
    }

    public function index(){
        return view('student.dash.index')
                ->with('student', Student::find(Auth::user()->id));
    }

    public function pdfViewDownload()
    {
        $student = Student::find(Auth::user()->id);

        // return view('admin.student.pdf_view')
        //         ->with('student', Student::find($id));

        $name = 'Student_Profile_' . time();
        $pdf = PDF::loadView('admin.student.pdf_view', ['student'=>$student])->setPaper('a4', 'portrait');
        return $pdf->download($name.'.pdf');

    }
}
