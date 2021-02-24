<!-- Left Panel -->
<aside id="left-panel" class="left-panel">
    <nav class="navbar navbar-expand-sm navbar-default">
        <div id="main-menu" class="main-menu collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href={{ route('dashboard') }}><i class
                        ="menu-icon fa fa-laptop"></i>Dashboard </a>
                </li>

                <li class="menu-title">Produk</li><!-- /.menu-title -->
                <li class="">
                    <a href="{{ route('products.index') }}"> <i class="menu-icon fa fa-list"></i>Lihat Produk</a>
                </li>
                <li class="">
                    <a href="{{ route('products.create') }}"> <i class="menu-icon fa fa-plus"></i>Tambah Produk</a>
                </li>
                <li class="">
                    <a href="{{ route('productcategory.index') }}"> <i class="menu-icon fa fa-plus"></i>Tambah Kategori</a>
                </li>
                

                <li class="menu-title">Transaksi</li><!-- /.menu-title -->
                <li class="">
                    <a href="{{route('transaction.index')}}"> <i class="menu-icon fa fa-bar-chart-o"></i>Lihat Transaksi</a>
                </li>

                <li class="menu-title">Laporan</li><!-- /.menu-title -->
                <li class="">
                    <a href="{{route('laporan.index')}}"> <i class="menu-icon fa fa-external-link"></i>Cetak Laporan</a>
                </li>

                <li class="menu-title">Pengguna</li><!-- /.menu-title -->
                <li class="">
                    <a href="{{route('admin.index')}}"> <i class="menu-icon fa fa-users"></i>Admin</a>
                </li>
                <li class="">
                    <a href="{{route('user.index')}}"> <i class="menu-icon fa fa-users"></i>User</a>
                </li>
                {{-- <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-cogs"></i>Admin</a>
                    <ul class="sub-menu children dropdown-menu">                            
                        <li><i class="fa fa-users"></i><a href="{{route('admin.index')}}">Lihat Admin</a></li>
                        <li><i class="fa fa-user"></i><a href="{{ route('admin.create') }}">Tambah Admin</a></li>
                    </ul>
                </li> --}}
                {{-- <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-cogs"></i>Kostumer</a>
                    <ul class="sub-menu children dropdown-menu">                            
                        <li><i class="fa fa-users"></i><a href="ui-typgraphy.html">Lihat Kostumer</a></li>
                        <li><i class="fa fa-user"></i><a href="ui-typgraphy.html">Tambah Kostumer</a></li>
                    </ul>
                </li> --}}
            </ul>
        </div><!-- /.navbar-collapse -->
    </nav>
</aside>
<!-- /#left-panel -->