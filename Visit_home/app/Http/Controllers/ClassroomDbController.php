<?php

namespace App\Http\Controllers;

use App\Models\classroom_db;
use Illuminate\Http\Request;

class ClassroomDbController extends Controller
{
    public static function get()
    {
        return classroom_db::where([
            ['status', '=', 'enable'],
        ])->get();
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
     * @param  \App\Models\classroom_db  $classroom_db
     * @return \Illuminate\Http\Response
     */
    public function show(classroom_db $classroom_db)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\classroom_db  $classroom_db
     * @return \Illuminate\Http\Response
     */
    public function edit(classroom_db $classroom_db)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\classroom_db  $classroom_db
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, classroom_db $classroom_db)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\classroom_db  $classroom_db
     * @return \Illuminate\Http\Response
     */
    public function destroy(classroom_db $classroom_db)
    {
        //
    }
}
