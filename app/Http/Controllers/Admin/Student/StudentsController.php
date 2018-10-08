<?php

namespace App\Http\Controllers\Admin\Student;

use Session;
use Illuminate\Http\Request;
use App\Models\Admin\Student;
use App\Models\Admin\Address;
use App\Models\Admin\Guardian;
use App\Http\Controllers\Controller;
use App\Http\Requests\StudentCreateRequest;
use App\Models\Admin\EducationalQualification;

class StudentsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.student.index')
                ->with('students', Student::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.student.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StudentCreateRequest $request)
    {
        $input = $request->all();
        // student
        $input['avatar'] = $this->imageUpload($request->avatar,'avatar');
        $student = Student::create($input);

        // Educational Qualification
        $input['student_id'] = $student->id;
        EducationalQualification::create($input);

        // Guardian
        $guardian = new Guardian;
        $guardian->student_id = $student->id;
        $guardian->name = $request->guardian_name;
        $guardian->contact = $request->guardian_contact;
        $guardian->relationship = $request->relationship;
        $guardian->save();

        // Address
        Address::create($input);

        if ($student) {
            Session::flash('success','Student created successfully');
        }

        return redirect()->back();
    }

    public function imageUpload($image,$path)
    {
        $new_name = '';
        if ($image) {
            $new_name = time().'.'.$image->getClientOriginalExtension();
            $image->move('uploads/'.$path.'/',$new_name);
        }
        return $new_name;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return view('admin.student.show')
                ->with('student', Student::find($id));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
