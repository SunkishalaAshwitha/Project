
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Details</title>
    <style>
       body {
            background-image: url('p20.jpg'); /* Replace 'p5.jpg' with your image file's name */
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
    <h1>Product Details</h1>

    <c:if test="${not empty product}">
        
        <p>Category:Cool Drinks </p>
        <p>Description:Soft drinks," commonly known as "cool drinks" in some regions, are non-alcoholic carbonated beverages known for their refreshing and often sweet or tangy flavors. </p>
        <p>Price: Depends on the cool drink</p>
        <p>Available Quantity: 50 units</p>
    </c:if>

    <c:if test="${empty product}">
        <p>Product not found.</p>
    </c:if>
    
    <a href="Home.jsp">Back to Home</a>
</body>
</html>