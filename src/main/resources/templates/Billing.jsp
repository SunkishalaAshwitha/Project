<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Invoice</title>
    <style>
        body {
            background-image: url('p12.jpg'); /* Replace 'p5.jpg' with your image file's name */
            background-size: cover;
            background-repeat: no-repeat;
        }

        .chat-container {
            background-color: rgba(255, 255, 255, 0.8); /* Light gray background with transparency */
            padding: 20px;
            border-radius: 10px;
            margin: 20px;
        }
    </style>
</head>
<body>
    <h1>Invoice</h1>

    <table border="1">
        <tr>
            <th>Item</th>
            <th>Quantity</th>
            <th>Price per Unit</th>
            <th>Total</th>
        </tr>
        <tr>
            <td>Equipment</td>
            <td>2</td>
            <td>$10.00</td>
            <td>$20.00</td>
        </tr>
        <tr>
            <td>Crew Members</td>
            <td>3</td>
            <td>$15.00</td>
            <td>$45.00</td>
        </tr>
    </table>

    <p>Total Amount: $65.00</p>

    <div>
        <p>Payment Details:</p>
        <p>Payment method: Credit Card</p>
        <p>Card Number: XXXX-XXXX-XXXX-1234</p>
        <p>Expiry Date: 12/24</p>
    </div>

    <div>
        <p>Billing Address:</p>
        <p>Name: John Doe</p>
        <p>Address: 123 Main St</p>
        <p>City: Anytown</p>
        <p>ZIP: 12345</p>
    </div>

    <div>
        <p>Shipping Address:</p>
        <p>Name: Jane Doe</p>
        <p>Address: 456 Elm St</p>
        <p>City: Othertown</p>
        <p>ZIP: 67890</p>
    </div>

</body>
</html>