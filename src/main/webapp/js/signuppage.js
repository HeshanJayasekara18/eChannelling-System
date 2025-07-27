function validatePassword() {
        
        const password = document.getElementById("password").value;
        const confirmPassword = document.getElementById("confirmPassword").value;

        
        if (password !== confirmPassword) {
            alert("Passwords do not match! Please try again.");
            return false; 
        }

        return true; 
    }

    document.getElementById('signinForm').addEventListener('submit', function(event) {
    event.preventDefault(); 

    
    setTimeout(function() {
        alert("Data added successfully!");
        
    }, 1000); 

    });
    

    function validateForm() {
       
        const username = document.getElementById("username").value;
        const password = document.getElementById("password").value;
        const confirmPassword = document.getElementById("confirmPassword").value;
        const phone = document.getElementById("phone").value;

        
        if (!username.startsWith('AD')) {
            alert("Username must start with 'AD'.");
            return false; 
        }

       
        if (password.length < 8) {
            alert("Password must be at least 8 characters long.");
            return false; 
        }

        
        if (password !== confirmPassword) {
            alert("Passwords do not match! Please try again.");
            return false; 
        }

        
        const phoneRegex = /^\d{10}$/;
        if (!phoneRegex.test(phone)) {
            alert("Phone number must be exactly 10 digits.");
            return false; 
        }

  
        return true;
    }