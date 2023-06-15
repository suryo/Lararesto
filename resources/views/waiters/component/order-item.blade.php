<div class="card bg-light border-start-0 border-top-0 border-end-0 rounded-0 pb-3 border-bottom-md-0">
   <div class="row gy-0 gx-3">
      <div class="col-4">
         @if ($cartitems->attributes->images=="imagenotavailable.jpg")
         <img src="{{ url('files/imagenotavailable.jpg')}}" class="card-img" alt="">
         @else
         <img src="{{ url('files/product-images/')."/".$cartitems->attributes->images }}" class="card-img" alt="">
         @endif
        
      </div>
      <div class="col-8">
         <div class="card-body p-0">
            <h6 class="card-title text-capitalize small mb-1 opacity-75">
               {{  $cartitems->category }} &nbsp;&nbsp;&nbsp; {{  $cartitems->subcategory }}
            </h6>
            <h6 class="card-title text-capitalize fw-semibold mb-1">
               {{  $cartitems->brand }}-{{  $cartitems->name }}
            </h6>
            <p class="card-text small mb-2">
               Qty. {{  $cartitems->quantity }}
            </p>
            <p class="card-text fw-semibold mb-2">
               Rp {{  $cartitems->price }},-
            </p>
            <p class="card-text">
               <a data-bs-toggle="modal" href="#modal-detail-menu" class="text-dark text-decoration-none me-3">
                  <u><small>EDIT</small></u> <i class="bi bi-pencil-fill"></i>
               </a>
               <form action="{{ route('cart.remove') }}" method="POST"  id="formdeleteitemscart">
                  @csrf
                  <input type="hidden" value="{{ $cartitems->id }}" name="id">
                  <a class="text-dark text-decoration-none" onclick="document.getElementById('formdeleteitemscart').submit()">
                     <u><small>DELETE</small></u> <i class="bi bi-trash2-fill"></i>
                  </a>
                  {{-- <button class="text-dark text-decoration-none"><u><small>DELETE</small></u> <i class="bi bi-trash2-fill"></i></button> --}}
              </form>
             
            </p>
         </div>
      </div>
   </div>
</div>
