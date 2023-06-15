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
               @php
               $image=[];
               if (isset($modalitem->fileimages)) {
                  $imagetype = gettype(json_decode($modalitem->fileimages));
                  $image = (json_decode($modalitem->fileimages));
               }
               
               @endphp
               <div class="carousel-inner">
                  @if (isset($modalitem->fileimages)) {
                  @foreach ($image as $itemimage) 
                  <div class="carousel-item {{ $loop->index==0 ? "active" : ""  }}">
                     <img src="{{ url('files/product-images/')."/".$itemimage }}" class="d-block w-100" alt="">
                  </div>
                  @endforeach
                  @else
                  <div class="carousel-item active">
                     <img src="{{ url('files/imagenotavailable.jpg')}}" class="d-block w-100" alt="">
                  </div>
                  @endif
                  {{-- <div class="carousel-item active">
                     <img src="{{ url('files/product-images/').$modalitem->fileimages }}" class="d-block w-100" alt="">
                  </div>
                  <div class="carousel-item">
                     <img src="../waiters-assets/img/produk/supresso-brew.png" class="d-block w-100" alt="">
                  </div>
                  <div class="carousel-item">
                     <img src="../waiters-assets/img/produk/supresso-brew.png" class="d-block w-100" alt="">
                  </div> --}}
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
                  {{ $modalitem->description }}
               </p>
               <div class="overflow-x-auto w-100">
                  <nav id="menu-portion" class="text-nowrap text-capitalize">
                     {{-- @if (count($modalitem->variant))
                         @foreach ($modalitem->variant as $variant)
                         <a data-bs-toggle="modal" class="btn btn-outline-dark {{ $variant->id==$modalitem->id ? 'active' : '' }}" href="#modal-detail-menu{{ $variant->id }}">
                           <strong>{{ $variant->portion }}</strong> <br> Rp&nbsp;75.000,-
                        </a>
                      
                         @endforeach
                     @endif --}}
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
               {{-- <ul id="mods" class="list-group list-group-flush text-capitalize">

                  @if (count($modalitem->additional))
                         @foreach ($modalitem->additional as $additional)
                        
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
               </ul> --}}
            </div>

            <div class="container-fluid p-3">
               <textarea name="" id="" rows="2" placeholder="*Tap to enter special requirement" class="form-control p-0 rounded-0 border-top-0 border-end-0 border-start-0 bg-light"></textarea>
            </div>

         </div>
         <div class="modal-footer border-dark-subtle">
            <div class="d-flex w-100 align-items-center justify-content-between">
               <h4 id="totallabel{{ $modalitem->id }}" class="fw-semibold mb-0">Rp {{ $modalitem->price * 1000 }},-</h4>
               <div class="input-group w-auto">
                  <button class="btn border-dark" onclick="itemminus{{ $modalitem->id }}({{ $modalitem->id }})">
                     <i class="bi bi-dash-lg"></i>
                  </button>
                  <input id="totalqty{{ $modalitem->id }}" type="number" min="1" max="100" value="1" class="form-control border-dark text-center fw-semibold bg-light px-0" style="width: 70px;">
                  <button class="btn border-dark" onclick="itemplus{{ $modalitem->id }}({{ $modalitem->id }})">
                     <i class="bi bi-plus-lg"></i>
                  </button>
               </div>
            </div>
            <div class="w-100">
               <form action="{{ route('cart.store') }}" method="POST" enctype="multipart/form-data" class="d-md-flex w-100 gap-3">
                  @csrf
                  @php
                  $imageName = "imagenotavailable.jpg";
                  // if (item.images.length > 0) {
                  //     imageName = item.images[0];
                  // }
                  //dump($modalitem)
                  @endphp
                
                  <input type="hidden" value="{{ $modalitem->id }}" name="id">
                  <input type="hidden" value="{{ $modalitem->name }}" name="name">
                  <input type="hidden" name="quant" value="1" id="qty-product{{ $modalitem->id }}">
                  <input type="hidden" name="stock" value="1" id="stock-product">
                  <input type="hidden" name="stockweb" value="{{ $modalitem->id }}" id="stockweb">
                  <input type="hidden" value="{{ $modalitem->price }}" name="price">
                  <input type="hidden" value="{{ $imageName }}" name="images">
                  <input type="hidden" value="{{ $imageName }}" name="types">
                  <input type="hidden" value="{{ $modalitem->portion }}" name="portion">
                  <input type="hidden" value="{{ $modalitem->description }}" name="description">
                  <input type="hidden" value="" name="units">
                  <input type="hidden" value="{{ $modalitem->brand }}" name="brand">
                  <input type="hidden" value="{{ $modalitem->category }}" name="category">
                  <input type="hidden" value="{{ $modalitem->subcategory }}" name="subcategory">
                  <input type="hidden" value="{{ $modalitem->id_category }}" name="id_category">
                  
                  

                  <button class="btn btn-lg text-bg-dark w-100">Order Now!</button>
               </form>
               {{-- <button class="btn btn-lg text-bg-dark w-100" onclick="codeAddress({{$modalitem->id}})">Order Now!</button> --}}
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
var qty{{ $modalitem->id }} = 1;
var total = {{ $modalitem->price }}*1000;


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

   function itemplus<?php echo $modalitem->id ?>(id){
      console.log(qty{{ $modalitem->id }});
      qty{{ $modalitem->id }} = qty{{ $modalitem->id }} + 1;
      var total = {{ $modalitem->price }}*1000;
      total = total * qty{{ $modalitem->id }};
      console.log("Rp"+"."+total+" ,-");
      document.getElementById("totallabel"+id).innerHTML = "Rp"+"."+total+" ,-";
      document.getElementById("totalqty"+id).value = qty{{ $modalitem->id }};
      document.getElementById("qty-product"+id).value = qty{{ $modalitem->id }};
   }

   function itemminus<?php echo $modalitem->id ?>(id){
      console.log(qty{{ $modalitem->id }});
      qty{{ $modalitem->id }} = qty{{ $modalitem->id }} - 1;
      var total = {{ $modalitem->price }}*1000;
      total = total * qty{{ $modalitem->id }};
      console.log("Rp"+"."+total+" ,-");
      document.getElementById("totallabel"+id).innerHTML = "Rp"+"."+total+" ,-";
      document.getElementById("totalqty"+id).value = qty{{ $modalitem->id }};
      document.getElementById("qty-product"+id).value = qty{{ $modalitem->id }};
   }

   function codeAddress(id) {
        console.log("test add to cart");
        let urlAction = "{{ route('cart.store') }}";
        let strFooter = '';
            strFooter +=
        '<form action="' + urlAction +
                '" method="POST" enctype="multipart/form-data" class="d-md-flex w-100 gap-3">' +
                '@csrf' +
                '<input type="hidden" value="' + item.id + '" name="id">' +
                '<input type="hidden" value="' + item.product_name + '" name="name">' +
                '<input type="hidden" name="quant[2]" value="1" id="qty-product">' +
                '<input type="hidden" name="stock" value="1" id="stock-product">' +
                '<input type="hidden" name="stockweb" value="' + item.stockweb + '" id="stockweb">' +
                '<input type="hidden" value="' + item.product_weight + '" name="gramature">' +
                '<input type="hidden" value="' + collectionName + '" name="collection">' +
                '<input type="hidden" value="' + item.disc_event + '" name="discount">' +
                '<input type="hidden" value="' + item.product_price + '" name="pricemaster">' +
                '<input type="hidden" value="' + product_price_after_disc + '" name="priceafterdiscount">' +
                '<input type="hidden" value="' + productPrice + '" name="price">';



            let imageName = "imagenotavailable.jpg";
            if (item.images.length > 0) {
                imageName = item.images[0];
            }

            strFooter += '<input type="hidden" value="' + imageName + '" name="images">';

            strFooter +=
                '<button name="addCartContinueShopping" data-bs-dismiss="modal" class="btn btn-light w-100 mb-2 mb-md-0"  onclick="$(\'#loading\').collapse(\'show\');">Continue Shopping</button>' +
                '<button name="addCartContinueCart" data-bs-dismiss="modal" class="btn btn-dark w-100 mb-2 mb-lg-0"  onclick="$(\'#loading\').collapse(\'show\');">Shopping Cart & Checkout</button>' +
                '</form>';

        


        qtyPopup = +document.getElementById("qtypopup").value;
        harga = +document.getElementById("Harga").innerHTML;
        document.getElementById("qtypopup").value = qtyPopup;
        calculated = qtyPopup * harga;
        document.getElementById("totalnya"+id).innerHTML = calculated.toFixed(2);
    }

   </script>