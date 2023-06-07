@extends('layouts.layout')
@section('content')
<div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>{{$pageName}} Table</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Beranda</a></div>
              <div class="breadcrumb-item"><a href="#">Rekening Toko</a></div>
              <div class="breadcrumb-item">Form</div>
            </div>
          </div>

          <div class="section-body">
            <!-- <h2 class="section-title">Table</h2>
            <p class="section-lead">Example of some Bootstrap table components.</p> -->

            <div class="row">
              <div class="col-12 col-md-6 col-lg-6">
              <form method="post" action="{{url('shop_rekening')}}">
                  @csrf
                <div class="card">
                  <div class="card-header">
                    <h4>Data {{$pageName}}</h4>
                    <div class="card-header-action">
                      <a href="{{url('shop_rekening')}}" class="btn btn-success">Kembali</a>
                    </div>
                  </div>
                  <div class="card-body">
                      <x-alert></x-alert>
                    
                        <div class="form-group">
                            <label>Nama Bank</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="fa fa-font"></i>
                                    </div>
                                </div>
                                <input type="text" name="name" id="name" class="form-control phone-number">
                            </div>
                            
                        </div>
                        <div class="form-group">
                            <label>Nomor Rekening</label>
                            <div class="input-group">
                              <div class="input-group-prepend">
                                <div class="input-group-text">
                                    <i class="fas fa-sort-numeric-up"></i>
                                </div>
                            </div>
                                <input type="text" name="nomor_rekening" class="form-control"/>
                            </div>
                            
                        </div>
                        <div class="form-group">
                            <label>Status</label>
                            <div class="input-group">
                              <div class="input-group-prepend">
                                <div class="input-group-text">
                                    <i class="fa fa-toggle-off"></i>
                                </div>
                              </div>
                              <select name="status" class="form-control">
                                <option value="Aktif">Aktif</option>
                                <option value="Tidak Aktif">Tidak Aktif</option>
                              </select>
                            </div>
                        </div>
                  </div>
                  <div class="card-footer text-right">
                    <nav class="d-inline-block">
                      <button type="submit" class="btn btn-molar">Submit</button>
                    </nav>
                  </div>

                </div>
                </form>
              </div>
              
            
           
          </div>
        </section>
      </div>
      <script>
          document.onreadystatechange = ()=>{
              if(document.readyState==='complete'){
                  $('#alert').fadeOut(5000);
              }
          }
          
    </script>
@endsection