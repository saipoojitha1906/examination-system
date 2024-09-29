<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="exampaper.css">
</head>
<body>
<h1 align="center">WEB ONLINE EXAM</h1>
<form >
    <div>
        <p>1. What is the full form of AJAX?</p>
        <input type="radio" name="exam1-choice" value="choice-1">Asynchronous JavaScript and XML<br>
        <input type="radio" name="exam1-choice" value="choice-2">Arithmetic JavaScript and XML<br>
        <input type="radio" name="exam1-choice" value="choice-3">Asynchronous Java and XML<br>
        <input type="radio" name="exam1-choice" value="choice-4">None<br>
    </div>
    <div>
        <p>2. What is React?</p>
        <input type="radio" name="exam2-choice" value="choice-2">Server-side technology<br>
        <input type="radio" name="exam2-choice" value="choice-1">UI technology<br>
        <input type="radio" name="exam2-choice" value="choice-3">Both<br>
        <input type="radio" name="exam2-choice" value="choice-4">None<br>
    </div>
    <div>
        <p>3.which program is used by web clients to view the web pages?</p>
        <input type="radio" name="exam20-choice" value="choice-1">web browser<br>
        <input type="radio" name="exam20-choice" value="choice-2">protocol<br>
        <input type="radio" name="exam20-choice" value="choice-3">web server<br>
        <input type="radio" name="exam20-choice" value="choice-4">search engine<br>
        </div>
        <div>
        <p>4.what is the name of the location address of hypertext documents?</p>
        <input type="radio" name="exam3-choice" value="choice-1">uniform resource locator<br>
        <input type="radio" name="exam3-chioce" value="choice-2">webserver<br>
        <input type="radio" name="exam3-choice" value="choice-3">file<br>
        <input type="radio" name="exam3-choice" value="choice-4">web address<br>
        </div>
        <div>
        <p>5.what are shared on internet and are called as web pages?</p>
        <input type="radio" name="exam4-choice" value="choice-3">programs<br>
        <input type="radio" name="exam4-choice" value="choice-2">cables<br>
        <input type="radio" name="exam4-choice" value="choice-1">hyper text documents<br>
        <input type="radio" name="exam4-choice" value="choice-4">none<br>
        </div>
        <div>
        <div>
        <p>6.CGI stands for?</p>
        <input type="radio" name="exam6-choice" value="choice-2">common gateway internet<br>
        <input type="radio" name="exam6-choice" value="choice-1">common gateway interface<br>
        <input type="radio" name="exam6-choice" value="choice-3">central gateway interface<br>
        <input type="radio" name="exam6-choice" value="choice-4">none<br>
        </div>
        <div>
        <p>7._ is a collection of controls in html?</p>
        <input type="radio" name="exam7-choice" value="choice-1">form<br>
        <input type="radio" name="exam7-choice" value="choice-2">field<br>
        <input type="radio" name="exam7-choice" value="choice-3">table<br>
        <input type="radio" name="exam-choice" value="choice-4">frame<br>
        </div>
        <div>
        <p>8.html allows us to create 3 different kinds of _?</p>
        <input type="radio" name="exam8-choice" value="choice-2">functions<br>
        <input type="radio" name="exam8-choice" value="choice-3">events<br>
        <input type="radio" name="exam8-choice" value="choice-4">files<br>
        <input type="radio" name="exam8-choice" value="choice-1">lists<br>
        </div>
        <div>
        <p>9._ files are more compact than GIF files?</p>
        <input type="radio" name="exam9-choice" value="choice-1">.JPG and JPEG<br>
        <input type="radio" name="exam9-choice" value="choice-2">.JPG<br>
        <input type="radio" name="exam9-choice" value="choice-3">.JPEG<br>
        <input type="radio" name="exam9-choice" value="choice-4">NONE<br>
        </div>
        <div>
        <p>10.html allows us to use _ levels of headings?</p>
        <input type="radio" name="exam10-choice" value="choice-2">2<br>
        <input type="radio" name="exam10-choice" value="choice-3">3<br>
        <input type="radio" name="exam10-choice" value="choice-4">5<br>
        <input type="radio" name="exam10-choice" value="choice-1">6<br>
        <center><input type="button" name="button" value="Submit" onclick="calculateScore()"></center>
        </div>
</form>
<div id="score" style="text-align: center; font-size: 24px;"></div>
<script>
        function calculateScore() {
            // Your scoring logic here
            var selectedAnswers = document.querySelectorAll('input[type="radio"]:checked');
            var score = 0;

            selectedAnswers.forEach(function (selectedAnswer) {
                var selectedValue = selectedAnswer.value;
                if (selectedValue === "choice-1") {
                    score++;
                }
            });
            alert("Your score is:"+score);
          
            
        }
    </script>
</body>
</html>