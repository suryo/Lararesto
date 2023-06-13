let html5QrcodeScanner = new Html5QrcodeScanner(
    "reader",
    { fps: 10, qrbox: {width: 250, height: 250} },
/* verbose= */ false);

html5QrcodeScanner.render(onScanSuccess, onScanFailure);

function onScanFailure(error) {
    // handle scan failure, usually better to ignore and keep scanning.
    // for example:
   console.log("error");
}

function onScanSuccess(decodedText, decodedResult) {
    // handle the scanned code as you like, for example:
    // console.log(Code matched = ${decodedText}, decodedResult);
    $('#hasil_qrcode').val(decodedText);
    window.location.replace(decodedText);
    let id = decodedText;
    html5QrcodeScanner.clear().then(_ => {
        var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
    })
}