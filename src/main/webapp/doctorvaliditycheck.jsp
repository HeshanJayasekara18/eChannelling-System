<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor Availability</title>
    
    <!-- External Google Font for a modern look -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500&display=swap" rel="stylesheet">
    
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url("images/bgimage.png"); 
            background-size: cover;
            background-position: center; 
            background-repeat: no-repeat; 
            
        }
        
        .form-container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            text-align: center;
        }
        
        .form-container h1 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
        }

        label {
            display: block;
            font-size: 16px;
            margin-bottom: 10px;
            color: #555;
            text-align: left;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #3c91e6;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #347ac9;
        }

        /* Return Button */
        .back-button {
            background-color: #ff6565;
            color: white;
            border: none;
            padding: 10px 2px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            margin-top: 10px;
            text-decoration: none;
            display: inline-block;
            text-align: center;
        }

        .back-button:hover {
            background-color: #e05454;
        }

        /* Responsive design for mobile devices */
        @media (max-width: 480px) {
            .form-container {
                padding: 20px;
            }

            h1 {
                font-size: 20px;
            }

            input[type="text"], input[type="submit"], .back-button {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h1>Manage Doctors</h1>
        <form action="doclog" method="post">
            <label for="option">Manage available Doctors (yes/no):</label>
            <input type="text" id="option" name="option" placeholder="Enter yes or no" value="yes" required>
            <input type="submit" value="Submit">
        </form>

        <!-- Return Back Button -->
        <a href="javascript:history.back()" class="back-button">Return Back</a>
    </div>

</body>
</html>
