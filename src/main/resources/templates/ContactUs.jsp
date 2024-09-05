<!DOCTYPE html>
<html>
<head>
    <title>Advertisement Management Chatbot</title>
    <style>
        body {
            background-image: url('p5.jpg'); /* Replace 'p5.jpg' with your image file's name */
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
<div class="chat-container">
    <!-- ... Your existing HTML ... -->
    <div class="chat-messages" id="chat-messages">
        <!-- Chat messages will be displayed here -->
    </div>
    <title>Online Adv</title>
    <div class="user-input">
        <input type="text" id="user-input" placeholder="Type your question..." />
        <button id="send-button">Send</button>
    </div>
    <div class="contact-us">
        <h2>Contact Us</h2>
        <p>
            For any inquiries or assistance, please feel free to contact us:<br>
            Email: ashwithasunkishala@gmail.com<br>
            <a class="phone" href="tel:+91 9032534257">9032534257</a><br>
            Address: Vijayawada
        </p>
    </div>
    <!-- ... Your existing HTML ... -->
</div>

<script>
    // Get references to necessary elements
    const userInputElement = document.getElementById('user-input');
    const sendButton = document.getElementById('send-button');
    const chatMessages = document.getElementById('chat-messages');

    // Define a function to add a message to the chat
    function addMessage(sender, message) {
        const messageElement = document.createElement('div');
        messageElement.innerHTML = <strong>${sender}:</strong> ${message};
        chatMessages.appendChild(messageElement);
    }

    // Define a function to handle user input
    function handleUserInput() {
        const userMessage = userInputElement.value;
        if (userMessage.trim() === '') {
            return; // Don't process empty messages
        }

        addMessage('You', userMessage);

        // Respond to frequently asked questions
        const botResponse = getBotResponse(userMessage);

        addMessage('Bot', botResponse);

        // Clear the user input field
        userInputElement.value = '';
    }

    // Define a function to provide responses to frequently asked questions
    function getBotResponse(userMessage) {
        // Frequently asked questions and responses
        const faq = {
            "What is online advertisement?": "Online advertisement is a form of digital marketing that promotes products or services on the internet.",
            "How can I advertise my business online?": "To advertise your business online, you can use various methods such as Google Ads, social media advertising, and display advertising. We can help you with this.",
            "Tell me about your team": "Our team is a group of dedicated professionals with expertise in online advertising. We are committed to helping you succeed with your online advertising campaigns.",
            "Where are you located?": "We are located in Vijayawada. You can visit us at [Address].",
            "Contact details": "You can reach us via email at ashwithasunkishala@gmail.com or call us at +91 9032534257.",
            "Default": "Thank you for your question. We are here to assist you. If you have any specific questions, feel free to ask."
        };

        // Check if the user's question is in the FAQ
        if (faq[userMessage]) {
            return faq[userMessage];
        } else {
            return faq["Default"];
        }
    }

    // Attach the handleUserInput function to the "Send" button click event
    sendButton.addEventListener('click', handleUserInput);

    // Allow users to press Enter key to send the message
    userInputElement.addEventListener('keyup', (event) => {
        if (event.key === 'Enter') {
            handleUserInput();
        }
    });
</script>
</body>
</html>