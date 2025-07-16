<!-- index.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to AWS CI/CD Pipeline Demo!</title>
    <style>
        body {
            background: linear-gradient(135deg, #f8ffae 0%, #43c6ac 100%);
            font-family: 'Segoe UI', Arial, sans-serif;
            text-align: center;
            padding-top: 60px;
        }
        .rainbow-text {
            font-size: 2.5em;
            font-weight: bold;
            background: linear-gradient(90deg, #ff6a00, #ee0979, #00c3ff, #43e97b, #f8ffae, #ff6a00);
            background-size: 400% 400%;
            color: transparent;
            background-clip: text;
            -webkit-background-clip: text;
            animation: rainbow 4s linear infinite;
        }
        @keyframes rainbow {
            0% {background-position: 0% 50%;}
            100% {background-position: 100% 50%;}
        }
        .aws-logo {
            width: 120px;
            margin: 30px auto 10px;
            display: block;
        }
        .subtitle {
            font-size: 1.3em;
            color: #333;
            margin-bottom: 30px;
        }
        .confetti {
            position: fixed;
            top: 0; left: 0; width: 100vw; height: 100vh;
            pointer-events: none;
            z-index: 999;
        }
    </style>
</head>
<body>
    <img class="aws-logo" src="https://a0.awsstatic.com/libra-css/images/logos/aws_logo_smile_1200x630.png" alt="AWS Logo"/>
    <div class="rainbow-text">🎉 Welcome to Your AWS CI/CD Pipeline! 🎉</div>
    <div class="subtitle">Deployed with <b>Jenkins</b>, <b>CodePipeline</b>, or <b>your favorite AWS tools</b>.<br>
        <span style="color:#ee0979;">Enjoy automated deployments!</span>
    </div>
    <canvas class="confetti"></canvas>
    <script>
        // Simple confetti animation
        const canvas = document.querySelector('.confetti');
        const ctx = canvas.getContext('2d');
        let W = window.innerWidth, H = window.innerHeight;
        canvas.width = W; canvas.height = H;
        let confetti = [];
        for(let i=0;i<150;i++){
            confetti.push({
                x: Math.random()*W,
                y: Math.random()*H,
                r: Math.random()*6+4,
                d: Math.random()*Math.PI*2,
                color: `hsl(${Math.random()*360},80%,60%)`,
                tilt: Math.random()*10-5
            });
        }
        function draw(){
            ctx.clearRect(0,0,W,H);
            confetti.forEach(c=>{
                ctx.beginPath();
                ctx.arc(c.x, c.y, c.r, 0, 2*Math.PI);
                ctx.fillStyle = c.color;
                ctx.fill();
            });
        }
        function update(){
            confetti.forEach(c=>{
                c.y += Math.cos(c.d)+1+0.5*Math.random();
                c.x += Math.sin(c.d);
                if(c.y>H){
                    c.y = -10; c.x = Math.random()*W;
                }
            });
        }
        function loop(){
            draw(); update(); requestAnimationFrame(loop);
        }
        loop();
        window.addEventListener('resize', ()=>{
            W = window.innerWidth; H = window.innerHeight;
            canvas.width = W; canvas.height = H;
        });
    </script>
</body>
</html>

export CODEARTIFACT_AUTH_TOKEN=`aws codeartifact get-authorization-token --domain greydevops --domain-owner 221295402889 --region us-east-1 --query authorizationToken --output text`