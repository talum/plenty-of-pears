$(document).on('page:change', function(){
    selectMatchListener();
});

function selectMatchListener(){
    $('.accept-match').on("ajaxLsuccess", function(event, data){
        debugger;
        
    })

    // $('.accept-match').on("click", function(){
    //     debugger;
    // })
}