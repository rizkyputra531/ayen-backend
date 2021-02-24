@extends('layouts.default')
@section('css')
<link rel="stylesheet" href="{{ asset('css/report_transaction.css') }}">
<link rel="stylesheet" href="{{ asset('plugins/css/datedropper.css') }}">
@endsection
@section('content') <!--content diambil dari yield pada layouts.default-->


<div class="row page-title-header">
  <div class="col-12">
    <div class="page-header d-flex justify-content-between align-items-center">
      <h4 class="page-title">Laporan Transaksi</h4>
      <div class="print-btn-group">
        <div class="input-group">
          <div class="input-group-prepend">
            <div class="input-group-text">
              <i class="mdi mdi-export print-icon"></i>
            </div>
            <button class="btn btn-print" type="button" data-toggle="modal" data-target="#cetakModal">Export Laporan</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="row modal-group">
  <div class="modal fade" id="cetakModal" tabindex="-1" role="dialog" aria-labelledby="cetakModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="cetakModalLabel">Export Laporan</h5>
          <button type="button" class="close close-btn" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form action="{{ url('report/export') }}" name="export_form" method="POST" target="_blank">
            @csrf
            <div class="row">
              <div class="col-12">
                <div class="form-group row">
                  <div class="col-5 border rounded-left offset-col-1">
                    <div class="form-radio">
                      <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="jns_laporan" value="period" checked> Periode</label>
                    </div>
                  </div>
                  <div class="col-5 border rounded-right">
                    <div class="form-radio">
                      <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="jns_laporan" value="manual"> Manual</label>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 period-form">
                <div class="form-group row">
                  <div class="col-10 p-0 offset-col-1">
                    <p>Pilih waktu dan periode</p>
                  </div>
                  <div class="col-4 p-0 offset-col-1">
                    <input type="number" class="form-control form-control-lg time-input number-input dis-backspace input-notzero" name="time" value="1" min="1" max="4">
                  </div>
                  <div class="col-6 p-0">
                    <select class="form-control form-control-lg period-select" name="period">
                      <option value="minggu" selected="">Minggu</option>
                      <option value="bulan">Bulan</option>
                      <option value="tahun">Tahun</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="col-12 manual-form" hidden="">
                <div class="form-group row">
                  <div class="col-10 p-0 offset-col-1">
                    <p>Pilih tanggal awal dan akhir</p>
                  </div>
                  <div class="col-10 p-0 offset-col-1 input-group mb-2">
                    <input type="text" name="tgl_awal_export" class="form-control form-control-lg date" placeholder="Tanggal awal">
                    <div class="input-group-append">
                      <div class="input-group-text">
                        <i class="mdi mdi-calendar calendar-icon"></i>
                      </div>
                    </div>
                  </div>
                  <div class="col-10 p-0 offset-col-1 input-group">
                    <input type="text" name="tgl_akhir_export" class="form-control form-control-lg date" placeholder="Tanggal akhir">
                    <div class="input-group-append">
                      <div class="input-group-text">
                        <i class="mdi mdi-calendar calendar-icon"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-export">Export</button>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="row">
<div class="content">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-lg-12">
                <div class="card" style="width: 115rem;">
                    
                    <div class="card-body">
                        <table id="bootstrap-data-table" class="table table-striped table-bordered">
                            <thead width="600px" class="text-center">
                                <tr>
                                    

                                    <th>No</th>
                                    <th>Tanggal</th>
                                    <th width="200px">Nama</th>
                                    <th width="200px">Email</th>
                                    <th width="100px">Nomor HP</th>
                                    <th width="200px">Ekspedisi Kirim</th>
                                    <th width="300px">Alamat Kirim</th>
                                    <th width="200px">Transaksi Total</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            @php
                            $no=1;
                            @endphp
                            <tbody>
                                @forelse ($items as $item)
                                <tr>
                                    <td class="text-center">{{$no++}}</td>
                                    <td>{{$item->created_at->format('d/M/Y')}}</td>
                                    <td>{{$item->nama}}</td>
                                    <td>{{$item->email}}</td>
                                    <td>{{$item->nomor_hp}}</td>
                                    <td class="text-center">{{$item->ekspedisi_kirim}}</td>
                                    <td>{{$item->alamat_kirim}}</td>
                                    <td>Rp. {{$item->transaction_total}}</td>
                                    <td class="text-center"> 
                                        @if($item->transaction_status == 'PENDING')
                                            <span class="badge badge-info">
                                        @elseif($item->transaction_status == 'SUKSES')
                                            <span class="badge badge-success">
                                        @elseif($item->transaction_status == 'GAGAL')
                                            <span class="badge badge-danger">
                                        @else
                                            <span>
                                        @endif
                                            {{$item->transaction_status}}
                                            </span>
                                    </td>
                                </tr>
                                @empty
                                    
                                @endforelse
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            


        </div>
    </div><!-- .animated -->
</div><!-- .content -->
</div>
@endsection
@section('script')
<script src="{{ asset('plugins/js/datedropper.js') }}"></script>
<script src="{{ asset('js/report/script.js') }}"></script>
<script type="text/javascript">
function changeData(chart, label_array, data_array){
  chart.data = {
      labels: label_array,
      datasets: [{
          label: '',
          data: data_array,
          backgroundColor: 'RGB(211, 234, 252)',
          borderColor: 'RGB(44, 77, 240)',
          borderWidth: 3
      }]
  }
  chart.update();
}
$(document).on('submit', 'form[name=filter_form]', function(e){
  e.preventDefault();
  var request = new FormData(this);
  $.ajax({
      url: "{{ url('/report/transaction/filter') }}",
      method: "POST",
      data: request,
      contentType: false,
      cache: false,
      processData: false,
      success:function(data){
        $('.list-date').html(data);
      }
  });
});
$(document).on('click', '.chart-filter', function(e){
  e.preventDefault();
  var data_filter = $(this).attr('data-filter');
  if(data_filter == 'minggu'){
    $('.btn-filter-chart').html('1 Minggu Terakhir');
  }else if(data_filter == 'bulan'){
    $('.btn-filter-chart').html('1 Bulan Terakhir');
  }else if(data_filter == 'tahun'){
    $('.btn-filter-chart').html('1 Tahun Terakhir');
  }
  $.ajax({
    url: "{{ url('/report/transaction/chart') }}/" + data_filter,
    method: "GET",
    success:function(response){
      if(response.incomes.length != 0){
        changeData(myChart, response.incomes, response.total);
      }
    }
  });
});
</script>
@endsection