<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="https://cdn.tailwindcss.com/3.1.8"></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>


    <style>
        .tower-bridge{
            background: url('assets/img/towerbridge1.jpg');
            background-position:center;
            background-size: cover;
            height:100vh;
            transition: width 2s, height 4s, opacity 4s, transform 3s;
            opacity: 1;

        }

        .tower-bridge:hover{
           height: 80vh;background-position: bottom;
            transform: translate3d(0,0,40px);
            transition-delay: 1s;

        }



    </style>
</head>
<body class="bg-cyan-400">
<nav class="bg-white p-5 shadow md:flex md:items-center md:justify-between z-[5]">

    <div class="flex justify-between items-center">
        <span class="text-2x1  font-[Poppins] cursor-pointer">
            <img class="h-10 inline" src="data:image/png;base64,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" alt="">
            tailwind
        </span>
        <span class="text-3x1 cursor-pointer md:hidden block "><ion-icon name="reorder-four-outline" onclick="Menu(this)"></ion-icon></span>
    </div>

    <ul class="md:flex md:items-center  md:z-auto md:static absolute bg-white w-full left-0 md:w-auto md:py-0 py-4 md-pl-0 pl-7 md:opacity-100 opacity-0 top-[-400px] transition-all ease-in-out duration-500">
        <li class="my-6 md:my-0 mx-4">
            <a href="#" class=" text-xl hover:text-cyan-500 duration-500">Home</a>
        </li>
        <li class="my-6 md:my-0 mx-4">
            <a href="#" class=" text-xl hover:text-cyan-500 duration-500">Service</a>
        </li>
        <li class="my-6 md:my-0 mx-4">
            <a href="#" class=" text-xl hover:text-cyan-500 duration-500">About</a>
        </li>
        <li class="my-6 md:my-0 mx-4">
            <a href="#" class=" text-xl hover:text-cyan-500 duration-500">Contact</a>
        </li>
        <li class="my-6 md:my-0 mx-4">
            <a href="#" class=" text-xl hover:text-cyan-500 duration-500">Blog</a>
        </li>
        <button class="bg-cyan-300 text-white font-[Poppins] duration-500 px-6 py-2 mx-4 hover:bg-cyan-500 rounded" >Get Started</button>
    </ul>
</nav>
<header>
    <section>
        <div class="container-fluid tower-bridge " >

            <div class="w-3/12 md:mx-auto py-10 px-3 ">
            <h1>Web Development</h1>
            <ul class="">
                <li>Ecommerce</li>
                <li>CMS</li>
                <li>Blog</li>
                <li>Social Media</li>
                <li>SEO</li>
            </ul>
            </div>

        </div>
    </section>
</header>

<script>
    function Menu(e){
        let list = document.querySelector('ul');

        e.name === "menu" ? (e.name = "close",
            list.classList.add('top-[80px]'),
            list.classList.add('opacity-100')) : (e.name = "menu",
            list.classList.remove('top-[80px]'), list.classList.remove('opacity-100'))
    }
</script>
</body>
</html>
