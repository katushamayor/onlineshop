$('.delete-image').on('click', function (e){
   let id = e.target.closest('div').getAttribute('data-key');
    $.ajax({
        url: '/admin/products/deleteImage',
        type: 'POST',
        data: {id: id},
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        success: function (data){
            window.location.reload()
        }
    })
})
