@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header"> 
                        <b>ชั้น :</b> {{ $classroom->class_name }}
                        <b>ครูประจำชั้น</b>
                        @foreach ($classroom->Teacher as $item)
                            {{ $item->name }} {{ $item->last_name }} ,
                        @endforeach
                    </div>
                    <div class="card-body">
                        <table class="table table-striped">
                            <thead>
                              <tr>
                                <th scope="col">ลำดับ</th>
                                <th scope="col">รหัสนักเรียน</th>
                                <th scope="col">ชื่อ-สกุล</th>
                                <th scope="col">การบันทึกข้อมูล</th>
                              </tr>
                            </thead>
                            <tbody>
                                <?php $i =1; ?>
                                @foreach ($student_data as $std)
                                <tr>
                                    <th scope="row">{{ $i }}</th>
                                    <td> {{ $std->std_id }} </td>
                                    <td> {{ $std->name }} </td>
                                    <td>
                                        <a href=" "  class="btn btn-primary"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-earmark-plus-fill" viewBox="0 0 16 16">
                                            <path d="M9.293 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V4.707A1 1 0 0 0 13.707 4L10 .293A1 1 0 0 0 9.293 0zM9.5 3.5v-2l3 3h-2a1 1 0 0 1-1-1zM8.5 7v1.5H10a.5.5 0 0 1 0 1H8.5V11a.5.5 0 0 1-1 0V9.5H6a.5.5 0 0 1 0-1h1.5V7a.5.5 0 0 1 1 0z"/>
                                          </svg></a>
                                    </td>
                                  </tr>
                                  <?php $i++; ?>
                                @endforeach
                            </tbody>
                          </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection