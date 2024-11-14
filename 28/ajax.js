function logoutUser(){
    if(confirm("Confirm Logout?")){
        $.ajax({
            type:"POST",
            url:"Component/login.cfc?method=logout",
            success:function(result){
                if(result){
                    return true;
                }
            }
        })
    }
    else{
        event.preventDefault()
    }
}
function deletePage(del){
    if(confirm("Confirm delete?")){
        $.ajax({
            type:"POST",
            url:"Component/login.cfc?method=deletePage",
            data:{id:del},
            success:function(result){
                if(result){
                    location.reload()
                    return true;
                }
            }
        })
    }
    else{
        event.preventDefault()
    }
}
