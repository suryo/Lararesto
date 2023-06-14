<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <title>SUPRESSO &bull; {{ $title }}</title>
   <link rel="icon" href="../waiters-assets/img/logo/logo.ico">
   <link rel="stylesheet" href="../waiters-assets/bootstrap-5.3.0-dist/css/bootstrap.min.css">
   <link rel="stylesheet" href="../waiters-assets/bootstrap-icons-1.10.3/bootstrap-icons.css">
   <link rel="stylesheet" href="../waiters-assets/fonts/gotham.css">
   <link rel="stylesheet" href="../waiters-assets/css/styles.css">
</head>
<body>

   <!-- nav top -->
   @include('waiters/component/navtop')
   <!-- nav sidebar -->
   @include('waiters/component/nav-sidebar')
   <!-- sidebar account -->
   @include('waiters/component/sidebar-account')
   <!-- modal pencarian -->
   @include('waiters/component/modal-pencarian')

   @yield('konten')

   <!-- nav to cart -->
   @if ($pages == 'landing' || $pages == 'menu' || $pages == 'Submenu')
      @include('waiters/component/nav-tocart')
   @endif

   <script src="../waiters-assets/jquery-3.6.1/jquery-3.6.1.min.js"></script>
   <script src="../waiters-assets/bootstrap-5.3.0-dist/js/bootstrap.bundle.min.js"></script>
   <script src="../waiters-assets/js/script.js"></script>

</body>
</html>
