@extends('waiters/master')

@section('konten')

<style>
    * {outline: green}
</style>
    <section>
        <div class="container">
            <ul class="cart-list list-unstyled">

                @foreach ($cartItems as $item)
                    {{-- cart item --}}
                    <li class="cart-item mb-3">
                        <div class="row gx-3 align-items-center">
                            <div class="col-auto">
                                {{-- <button class="btn border-0">&#x2716;</button> --}}
                                <form action="{{ route('cart.remove') }}" method="POST" class="w-100">
                                    @csrf
                                    <input type="hidden" value="{{ $item->id }}" name="id">
                                    <button class="btn border-0">&#x2716;</button>
                                </form>
                            </div>
                            <div class="col">
                                <h5 class="fw-semibold text-capitalize mb-1">
                                    {{ $item->name }}
                                </h5>
                                <p>
                                    {{-- <small class="text-capitalize">
                                    {{ $item->attributes->brand }} - {{ $item->attributes->subcategory }}
                                </small> --}}
                                    <br>
                                    {{ $item->quantity }} x {{ $item->attributes->units }}
                                    <br><br>
                                    {{ $item->price }}k
                                </p>
                            </div>
                            <div class="col-4">
                                @if ($item->attributes->images == 'imagenotavailable.jpg')
                                    <img src="{{ url('files/' . 'imagenotavailable.jpg') }}" class="img-fluid"
                                        alt="">
                                @else
                                    <img src="{{ url('files/product-images/' . $item->attributes->images) }}"
                                        class="img-fluid" alt="">
                                @endif

                            </div>
                        </div>
                    </li>
                    {{-- end cart item --}}
                @endforeach

            </ul>
        </div>
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-8 col-md-4 ms-auto">
                    <button class="btn btn-dark w-100">
                        + Add Items
                    </button>
                </div>
            </div>
        </div>
    </section>

    <section>
        <a class="btn btn-light rounded-0 w-100 py-3" href="#">
            <div class="container">
                <div class="row row-cols-auto justify-content-between g-0">
                    <div class="col">
                        <i class="bi bi-tag-fill"></i>&nbsp;<strong class="fw-semibold">Add voucher or discount
                            code</strong>
                    </div>
                    <div class="col">
                        <i class="bi bi-chevron-right"></i>
                    </div>
                </div>
            </div>
        </a>
    </section>
@endsection
