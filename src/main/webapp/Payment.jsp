<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html lang="en"> 
<head> 
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Payment Form</title> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/Payment.css"> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/Payment.js"></script>
</head> 
<body>  
<div class="container"> 
<a href= "Validate.jsp"><input type="submit" value="Update Payment" class="update-btn" 
style="display: inline-block;
    width: auto;
    padding: 12px;
    font-size: 17px;
    border-radius: 10px;
    background: #27ae60;
    color: #fff;
    cursor: pointer;
    position: absolute;
    top: 10px;  /* Adjust this value as per your form design */
    right: 65px;
    transform: translate(0, 0);"></a>
       
    <form method="post" class="needs-validation" action="Pay" novalidate> 
        <div class="row"> 
            <div class="col"> 
                <h3 class="title">Billing Address</h3> 
                <div class="inputBox"> 
                    <label for="fullName">Full Name:</label> 
                    <input type="text" id="FullName" name="FullName" required placeholder="ex: Rasanga Bawanthi"> 
                    <div class="invalid-feedback">
                        Please enter your full name.
                    </div>
                </div> 
                <div class="inputBox"> 
                    <label for="email">Email:</label> 
                    <input type="email" id="Email" name="Email" required placeholder="example@gmail.com"> 
                    <div class="invalid-feedback">
                        Please provide a valid email address.
                    </div>
                </div> 
                <div class="inputBox"> 
                    <label for="password">Password:</label> 
                    <input type="password" id="Password" name="Password" required> 
                    <div class="invalid-feedback">
                        Please provide password of email.
                    </div>
                </div> 
                <div class="inputBox"> 
                    <label for="confirmPassword">Re-enter Password:</label> 
                    <input type="password" id="ConfirmPassword" name="ConfirmPassword" required>
                    <div class="invalid-feedback">
                        Please confirm your password.
                    </div>
                </div> 
                
                <script>
                    const password = document.getElementById('Password');
                    const confirmPassword = document.getElementById('ConfirmPassword');

                    confirmPassword.addEventListener('input', function() {
                        if (password.value !== confirmPassword.value) {
                            confirmPassword.setCustomValidity('Passwords do not match');
                        } else {
                            confirmPassword.setCustomValidity('');
                        }
                    });
                </script>
                
                <div class="inputBox"> 
                    <label for="address">Address:</label> 
                    <input type="text" id="Address" name="Address" required placeholder="ex: No.xxx, xxxxxx.">
                    <div class="invalid-feedback">
                        Please provide your address.
                    </div> 
                </div> 
                <div class="inputBox"> 
                    <label for="city">City:</label> 
                    <input type="text" id="City" name="City" required placeholder="ex: Malabe"> 
                    <div class="invalid-feedback">
                        Please provide your city.
                    </div>
                </div> 
                <div class="flex"> 
                    <div class="inputBox"> 
                        <label for="province">Province:</label>
                            <input type="text" id="Province" name="Province" required placeholder="ex: Western">
                            <div class="invalid-feedback">
                                Please provide your province.
                            </div>
                    </div> 
                    <div class="inputBox"> 
                        <label for="zip-code">Zip Code:</label>
                            <input type="text" id="ZipCode" name="ZipCode" required placeholder="ex: 10620" pattern="\d{5}" maxlength="5"> <!--only accept a 5-digit number-->
                            <div class="invalid-feedback">
                                Please provide a valid zip code.
                            </div> 
                    </div> 
                </div> 
            </div> 
            <div class="col"> 
                <h3 class="title">Payment</h3> 
                <div class="inputBox"> 
                    <span>Cards Accepted:</span> 
                    <img src="Images/th (2).jpeg" alt=""> 
                </div> 
                <div class="inputBox"> 
                    <label for="card-name">Name on Card:</label>
                        <input type="text" id="NameOnCard" name="NameOnCard" required placeholder="ex: Anagi">
                        <div class="invalid-feedback">
                            Please enter the name on your card.
                        </div>
                </div> 
                <div class="inputBox"> 
                    <label for="CardNumber">Card Number:</label>
                    <input type="text" id="CardNumber" name="CardNumber" required placeholder="1234 1234 1234 1234" pattern="\d{4} \d{4} \d{4} \d{4}">
                    <!-- JavaScript for card number formatting and limiting to 16 digits -->
                    <script>
                        const cardNumberInput = document.getElementById('CardNumber');

                        cardNumberInput.addEventListener('input', function(e) {
                            let cardNumber = e.target.value.replace(/\s+/g, ''); // Remove all spaces
                            
                            // Limit to 16 digits
                            if (cardNumber.length > 16) {
                                cardNumber = cardNumber.substring(0, 16);
                            }

                            // Add spaces every 4 digits
                            if (cardNumber.length > 0) {
                                cardNumber = cardNumber.match(/.{1,4}/g).join(' ');
                            }
                            e.target.value = cardNumber;
                        });

                        // Prevent deleting spaces between card number segments
                        cardNumberInput.addEventListener('keydown', function(e) {
                            const key = e.key;
                            if ((key === 'Backspace' || key === 'Delete') && (cardNumberInput.value[cardNumberInput.value.length - 1] === ' ')) {
                                cardNumberInput.value = cardNumberInput.value.slice(0, -1); // Prevent deleting the space
                            }
                        });
                    </script>
                    <div class="invalid-feedback">
                        Please provide a valid card number.
                    </div>
                </div> 
                <div class="inputBox"> 
                    <label for="month">Exp Month:</label> 
                    <select name="ExpMonth" id="ExpMonth" required>
                        <option value="">Choose...</option>
                        <option value="January">January</option> 
                        <option value="February">February</option> 
                        <option value="March">March</option> 
                        <option value="April">April</option> 
                        <option value="May">May</option> 
                        <option value="June">June</option> 
                        <option value="July">July</option> 
                        <option value="August">August</option> 
                        <option value="September">September</option> 
                        <option value="October">October</option> 
                        <option value="November">November</option> 
                        <option value="December">December</option> 
                    </select> 
                    <div class="invalid-feedback">
                        Please select an expiration month.
                    </div>
                </div> 
                <div class="flex"> 
                    <div class="inputBox"> 
                        <label for="year">Exp Year:</label> 
                        <select name="ExpYear" id="ExpYear" required>
                            <option value="">Choose...</option>
                            <option value="2024">2024</option> 
                            <option value="2025">2025</option> 
                            <option value="2026">2026</option> 
                            <option value="2027">2027</option> 
                            <option value="2028">2028</option> 
                        </select> 
                        <div class="invalid-feedback">
                            Please select an expiration year.
                        </div>
                    </div> 
                    <div class="inputBox"> 
                        <label for="cvn">CVN:</label>
                        <input type="text" id="CVN" name="CVN" required placeholder="123" pattern="\d{3}" maxlength="3">
                        <div class="invalid-feedback">
                            Please provide a valid CVV.
                        </div>
                    </div> 
                </div> 
            </div> 
        </div> 
        
        <input type="submit" value='Make Payment' class="submit-btn"> 
        
    </form> 
</div>
</body>
</html>
