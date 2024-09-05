
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Creative</title>
    <style>
        body {
            background-image: url('p21.jpg'); /* Replace 'p5.jpg' with your image file's name */
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
    <h1>Creative</h1>
    
    <form id="form1" action="uploadCreative.jsp" onsubmit="return showActionMessage('form1');">
        <label for="title">Title:</label>
        <input type="text" name="title" id="title1" required>
        <br>

        <label for="description">Description:</label>
        <textarea name="description" id="description1" required></textarea>
        <br>

        <label for="creativeImage">Upload an Image:</label>
        <input type="file" name="creativeImage" id="creativeImage1" accept="image/*" required>
        <br>

        <label for="creativeVideo">Upload a Video (if applicable):</label>
        <input type="file" name="creativeVideo" id="creativeVideo1" accept="video/*">
        <br>

        <label for="price">Price (if applicable):</label>
        <input type="text" name="price" id="price1">
        <br>
        
        
    </form>

    <div id="actionMessage1" style="color: green; display: none;">Upload Successful!</div>

    <!-- Add a new form here -->
    <form id="form2" action="uploadCreative.jsp" onsubmit="return showActionMessage('form2');">
        <!-- You can add fields for the new form here -->
        <input type="text" name="newField" id="newField" required>
        <input type="submit" value="Upload">
    </form>

    <div id="actionMessage2" style="color: green; display: none;">Upload Successful!</div>

    <script>
        function showActionMessage(formId) {
            var actionMessage = document.getElementById("actionMessage" + formId);
            actionMessage.style.display = "block";
            return true; // Allow the form to submit
        }
    </script>
</body>
</html>
