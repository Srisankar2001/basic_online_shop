const form = document.getElementById('form');
const submitButton = document.getElementById('submit');
const name = document.getElementById('name');
const phone = document.getElementById('phone');
const email = document.getElementById('email');
const password = document.getElementById('password');
const re_password = document.getElementById('re-password');

form.addEventListener('input',()=>{
    if(name.value !== '' && phone.value !== '' && email.value !== '' && password.value !== '' && re_password.value !== ''){
        submitButton.disabled = false;
    }else{
        submitButton.disabled = true;
    }
})

submitButton.addEventListener('click',()=>{
    if(nameCheck()=== true && phoneCheck()=== true && emailCheck()=== true && passwordCheck()=== true){
        const formData = {
            name: name.value,
            phone: phone.value,
            email: email.value,
            password: password.value,
        };
        console.log('Sending data:', formData);
        fetch('./signup.php',{
            method: 'post',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(formData),
        })
        .catch(error => {
            console.log('Error:', error);
        });
    }
})

function nameCheck(){
    const nameVal = name.value;
    const nameRegex = /^[a-zA-Z]+$/;

    if(!nameRegex.test(nameVal)){
        alert("Name must only contain alphabet characters.");
    }else{
        return true;
    }
}

function emailCheck(){
    const emailVal = email.value;
    const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

    if(!emailRegex.test(emailVal)){
        alert("Enter the correct e-mail address.");
    }else{
        return true;
    }
}

function phoneCheck(){
    const phoneVal = phone.value;
    const phoneRegex1 = /^0\d{9}$/;
    const phoneRegex2 = /^\d{9}$/;

    if(phoneVal.length == 10){
        if(!phoneRegex1.test(phoneVal)){
            alert("Enter the correct phone number.");
        }else{
            return true;
        }
    }else if(phoneVal.length == 9){
        if(!phoneRegex2.test(phoneVal)){
            alert("Enter the correct phone number.");
        }else{
            phone.value = '0'+phone.value;
            return true;
        }
    }else{
        alert("Enter the correct phone number.");
    }
}

function passwordCheck(){
   const passwordVal = password.value.trim();
   const re_passwordVal = re_password.value.trim();

   if(passwordVal === re_passwordVal){
    return true;
   }else{
    alert("Enter the password correctly.");
   }
}