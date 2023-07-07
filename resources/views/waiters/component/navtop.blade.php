<nav id="navtop" class="navbar bg-light">
   <div class="container-xl">
      <div class="text-start" style="min-width: 76.8px; margin-left: -.5rem;">
         <button class="navbar-toggler rounded-0 border-0 px-2 d-none" data-bs-toggle="offcanvas" data-bs-target="#nav-sidebar" disabled>
            <span><i class="bi bi-three-dots"></i></span>
         </button>
         <button class="navbar-toggler rounded-0 border-0 px-2 ms-md-3 d-none opacity-0" disabled>
            <span><i class="bi bi-three-dots"></i></span>
         </button>
      </div>
      <a class="navbar-brand me-0" href="{{ url('menu') }}">
         <img src="../waiters-assets/img/logo/logotype.png" height="auto" style="width: 36vw; max-width: 160px;" alt="">
      </a>
      <div class="text-end" style="min-width: 76.8px; margin-right: -.5rem;">
         @if (($title != 'Cart')&&($title != 'checkout'))
             <button class="navbar-toggler rounded-0 border-0 px-2 me-md-3" data-bs-toggle="modal" data-bs-target="#modal-pencarian">
            <i class="bi bi-search"></i>
         </button>
         @endif
        
         <button class="navbar-toggler rounded-0 border-0 px-2 d-none" data-bs-toggle="offcanvas" data-bs-target="#sidebar-account">
            <i class="bi bi-person-circle"></i>
         </button>
      </div>
   </div>
</nav>
