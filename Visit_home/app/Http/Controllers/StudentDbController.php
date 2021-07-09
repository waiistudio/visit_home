<?php

namespace App\Http\Controllers;

use App\Models\student_db;
use App\Models\classroom_db;
use Illuminate\Http\Request;

class StudentDbController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\student_db  $student_db
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $classroom = classroom_db::find($id);
        // return $classroom->Teacher;
        $student_data = student_db::where([
            ['classroom', '=', $id],
            ['delete','=','false'],
            ['status','=','enable']
        ])->get();

        return view('visit.index', compact('student_data','classroom'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\student_db  $student_db
     * @return \Illuminate\Http\Response
     */
    public function edit(student_db $student_db)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\student_db  $student_db
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, student_db $student_db)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\student_db  $student_db
     * @return \Illuminate\Http\Response
     */
    public function destroy(student_db $student_db)
    {
        //
    }
}
