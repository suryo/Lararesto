<div id="modal-detail-menu{{ $modalitem->id }}" class="modal fade" tabindex="-1">
   <div class="modal-dialog modal-fullscreen-md-down modal-dialog-scrollable" style="$modal-fade-transform: scale(.8)">
      <div class="modal-content">
         <div class="modal-header border-0 pb-0 position-absolute top-0 start-0" style="z-index: 100;">
            <button class="btn-close text-bg-light" data-bs-dismiss="modal"></button>
         </div>
         <div class="modal-body p-0">

            <div id="carousel-detail-img" class="carousel slide">
               <div class="carousel-indicators">
                  <button data-bs-target="#carousel-detail-img" data-bs-slide-to="0" class="active"></button>
                  <button data-bs-target="#carousel-detail-img" data-bs-slide-to="1"></button>
                  <button data-bs-target="#carousel-detail-img" data-bs-slide-to="2"></button>
               </div>
               <div class="carousel-inner">
                  <div class="carousel-item active">
                     <img src="../waiters-assets/img/produk/supresso-brew.png" class="d-block w-100" alt="">
                  </div>
                  <div class="carousel-item">
                     <img src="../waiters-assets/img/produk/supresso-brew.png" class="d-block w-100" alt="">
                  </div>
                  <div class="carousel-item">
                     <img src="../waiters-assets/img/produk/supresso-brew.png" class="d-block w-100" alt="">
                  </div>
               </div>
               <button class="carousel-control-prev" data-bs-target="#carousel-detail-img" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon"></span>
               </button>
               <button class="carousel-control-next" data-bs-target="#carousel-detail-img" data-bs-slide="next">
                  <span class="carousel-control-next-icon"></span>
               </button>
            </div>

            <div class="container-fluid p-3 mb-4">
               <h6 class="text-capitalize small mb-1">
                  <span class="me-2">coffee</span> <span>manual brew</span>
               </h6>
               <h3 class="text-capitalize fw-semibold fs-4">
                  {{ $modalitem->brand }} - {{ $modalitem->name }} 
               </h3>
               <p class="small mb-4">
                  Lorem, ipsum dolor sit amet consectetur adipisicing elit. Culpa vitae nostrum, beatae quam sint voluptatibus eos esse dolor adipisci tenetur repellat corrupti, quaerat repudiandae, id nihil consectetur. Reprehenderit, mollitia soluta.
               </p>
               <div class="overflow-x-auto w-100">
                  <nav id="menu-portion" class="text-nowrap text-capitalize">
                     @if (count($modalitem->variant))
                         @foreach ($modalitem->variant as $variant)
                         <a data-bs-toggle="modal" class="btn btn-outline-dark {{ $variant->id==$modalitem->id ? 'active' : '' }}" href="#modal-detail-menu{{ $variant->id }}">
                           <strong>{{ $variant->portion }}</strong> <br> Rp&nbsp;75.000,-
                        </a>
                        {{-- <a data-bs-toggle="modal" href="#modal-detail-menu{{ $variant->id }}" class="text-decoration-none">das {{ $variant->id }} --}}
                        </a>
                         @endforeach
                     @endif
                     {{-- <a class="btn btn-outline-dark active" href="#">
                        <strong>solo</strong> <br> Rp&nbsp;75.000,-
                     </a>
                     <a class="btn btn-outline-dark" href="#">
                        <strong>doppio</strong> <br> Rp&nbsp;75.000,-
                     </a>
                     <a class="btn btn-outline-dark" href="#">
                        <strong>small</strong> <br> Rp&nbsp;75.000,-
                     </a>
                     <a class="btn btn-outline-dark" href="#">
                        <strong>medium</strong> <br> Rp&nbsp;75.000,-
                     </a>
                     <a class="btn btn-outline-dark" href="#">
                        <strong>large</strong> <br> Rp&nbsp;75.000,-
                     </a> --}}
                  </nav>
               </div>
            </div>

            <div class="container-fluid px-3 py-4 bg-dark-subtle d-flex justify-content-between align-items-center">
               <strong>Mods</strong>
               <span>Choose up to 1</span>
            </div>

            <div class="container-fluid p-3">
               <ul id="mods" class="list-group list-group-flush text-capitalize">

                  @if (count($modalitem->additional))
                         @foreach ($modalitem->additional as $additional)
                          <!-- mods item -->
                           <li class="list-group-item px-0">
                              <div class="form-check">
                                 <input onclick="myFunction<?php echo $modalitem->id ?>()" name="additionaloption{{ $modalitem->id }}[]" type="checkbox" class="form-check-input rounded-circle bg-dark border-dark" value='{"id":{{ $additional->id }}, "name":"{{ $additional->name }}", "price":{{ $additional->price }} }' id="mods{{ $additional->id }}" >
                                 <label for="mods1" class="form-check-label d-flex flex-nowrap justify-content-between">
                                    <div><span>{{ $additional->name }}</span></div>
                                    <div class="d-inline-flex flex-nowrap justify-content-between" style="width: 42%;">
                                       <span>+&nbsp;Rp&nbsp;</span>
                                       <span>{{ $additional->price }};-</span>
                                    </div>
                                 </label>
                              </div>
                           </li>
                         @endforeach
                     @endif
                  <!-- mods item -->
                 

               </ul>
            </div>

            <div class="container-fluid p-3">
               <textarea name="" id="" rows="2" placeholder="*Tap to enter special requirement" class="form-control p-0 rounded-0 border-top-0 border-end-0 border-start-0 bg-light"></textarea>
            </div>

         </div>
         <div class="modal-footer border-dark-subtle">
            <div class="d-flex w-100 align-items-center justify-content-between">
               <h4 id="totallabel" class="fw-semibold mb-0">Rp {{ $modalitem->price * 1000 }},-</h4>
               <div class="input-group w-auto">
                  <button class="btn border-dark" onclick="itemminus{{ $modalitem->id }}()">
                     <i class="bi bi-dash-lg"></i>
                  </button>
                  <input type="number" min="1" max="100" value="1" class="form-control border-dark text-center fw-semibold bg-light px-0" style="width: 70px;">
                  <button class="btn border-dark" onclick="itemplus{{ $modalitem->id }}()">
                     <i class="bi bi-plus-lg"></i>
                  </button>
               </div>
            </div>
            <div class="w-100">
               <button class="btn btn-lg text-bg-dark w-100" onclick="codeAddress()">Order Now!</button>
            </div>
         </div>
      </div>
   </div>
</div>
<style>
#modal-detail-menu.fade .modal-dialog {
   transform: translate(0,50px);
}

#modal-detail-menu.show .modal-dialog {
   transform: none;
}
</style>


<script type="text/javascript">

var total = {{ $modalitem->price }}*1000;
var qty = 1;

function myFunction<?php echo $modalitem->id ?>() {
   var total = {{ $modalitem->price }}*1000;
   var strvar<?php echo $modalitem->id ?> = "additionaloption"+'<?php echo $modalitem->id ?>'+"[]";
   var checkedValue = null; 
   var inputElements = document.getElementsByName(strvar<?php echo $modalitem->id ?>);
   var len = inputElements.length;
    for (var i=0; i<len; i++) {
      let arrayval = JSON.parse(inputElements[i].value);
      console.log(arrayval);
      if (inputElements[i].checked) {
         total = total + arrayval.price;
      }      
    }
    console.log(total);
    document.getElementById("totallabel").innerHTML = "Rp"+"."+total+" ,-";
   }

   function itemplus<?php echo $modalitem->id ?>(){
      console.log(qty);
      qty = qty + 1;
      var total = {{ $modalitem->price }}*1000;
      total = total * qty;
      document.getElementById("totallabel").innerHTML = "Rp"+"."+total+" ,-";
   }

   function itemminus<?php echo $modalitem->id ?>(){
      qty = qty - 1;
      var total = {{ $modalitem->price }}*1000;
      total = total * qty;
      document.getElementById("totallabel").innerHTML = "Rp"+"."+total+" ,-";
   }

   </script>