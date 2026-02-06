<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | AGRIOT-CLASSY SMKN 1 JAPARA</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;600;700&display=swap');
        
        body {
            background: #0f172a;
            font-family: 'Plus Jakarta Sans', sans-serif;
            overflow-x: hidden;
        }

        .bg-gradient {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            background: radial-gradient(circle at 0% 0%, rgba(30, 64, 175, 0.15) 0%, transparent 50%),
                        radial-gradient(circle at 100% 100%, rgba(59, 130, 246, 0.1) 0%, transparent 50%),
                        #0f172a;
        }

        .glass-morphism {
            background: rgba(30, 41, 59, 0.6);
            backdrop-filter: blur(16px);
            border: 1px solid rgba(255, 255, 255, 0.08);
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
        }

        .input-style {
            background: rgba(15, 23, 42, 0.6);
            border: 1px solid rgba(71, 85, 105, 0.5);
            transition: all 0.3s ease;
        }

        .input-style:focus {
            border-color: #3b82f6;
            box-shadow: 0 0 0 4px rgba(59, 130, 246, 0.1);
            outline: none;
        }

        .partner-logo {
            filter: grayscale(1) brightness(1.5);
            transition: all 0.3s ease;
            opacity: 0.7;
        }

        .partner-logo:hover {
            filter: grayscale(0) brightness(1);
            opacity: 1;
        }

        @keyframes slideUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .animate-slide-up {
            animation: slideUp 0.8s cubic-bezier(0.16, 1, 0.3, 1) forwards;
        }
    </style>
</head>
<body class="flex flex-col items-center justify-center min-h-screen p-4">

    <div class="bg-gradient"></div>

    <!-- Container Utama -->
    <div class="z-10 w-full max-w-lg p-8 glass-morphism rounded-3xl animate-slide-up">
        
        <!-- Header: Logo & Judul -->
        <div class="text-center mb-8">
            <img src="https://lh3.googleusercontent.com/pw/AP1GczPrvN4P5U-9m4_WfP-V-fGv0R6q1jO-n9H6U9Rz_r9g=s250" 
                 alt="Logo SMKN 1 JAPARA" 
                 class="h-24 mx-auto mb-4 drop-shadow-2xl"
                 onerror="this.src='https://via.placeholder.com/100?text=SMKN+1+JAPARA'">
            
            <h2 class="text-xs font-bold tracking-[0.2em] text-blue-400 uppercase mb-1">SMK NEGERI 1 JAPARA</h2>
            <h1 class="text-4xl font-extrabold text-white tracking-tight mb-2">AGRIOT<span class="text-blue-500 font-light text-3xl">-CLASSY</span></h1>
            <div class="h-1 w-12 bg-blue-500 mx-auto rounded-full mb-4"></div>
            <p class="text-slate-400 text-sm">Sistem Integrasi IoT Pertanian & Otomasi Industri</p>
        </div>

        <form id="loginForm" class="space-y-5">
            <!-- Username -->
            <div>
                <label class="block mb-2 text-xs font-semibold text-slate-400 uppercase tracking-wider">Username</label>
                <div class="relative">
                    <span class="absolute inset-y-0 left-0 flex items-center pl-4 text-slate-500">
                        <i class="fas fa-user-circle"></i>
                    </span>
                    <input type="text" id="username" required 
                        class="w-full pl-11 pr-4 py-3.5 input-style text-white rounded-xl placeholder-slate-600"
                        placeholder="Masukkan ID Pengguna">
                </div>
            </div>

            <!-- Password -->
            <div>
                <label class="block mb-2 text-xs font-semibold text-slate-400 uppercase tracking-wider">Password</label>
                <div class="relative">
                    <span class="absolute inset-y-0 left-0 flex items-center pl-4 text-slate-500">
                        <i class="fas fa-key"></i>
                    </span>
                    <input type="password" id="password" required 
                        class="w-full pl-11 pr-12 py-3.5 input-style text-white rounded-xl placeholder-slate-600"
                        placeholder="••••••••">
                    <button type="button" onclick="togglePassword()" class="absolute inset-y-0 right-0 flex items-center pr-4 text-slate-500 hover:text-white transition-colors">
                        <i id="eyeIcon" class="fas fa-eye"></i>
                    </button>
                </div>
            </div>

            <!-- Button -->
            <button type="submit" 
                class="w-full py-4 px-4 bg-gradient-to-r from-blue-600 to-indigo-600 hover:from-blue-500 hover:to-indigo-500 text-white font-bold rounded-xl transition-all duration-300 shadow-xl shadow-blue-900/20 active:scale-[0.98]">
                MASUK KE SISTEM
            </button>
        </form>

        <!-- Footer Info -->
        <div class="mt-8 pt-6 border-t border-slate-700/50 text-center">
            <p class="text-[10px] text-slate-500 uppercase tracking-widest mb-4">Dikembangkan Oleh</p>
            <p class="text-sm font-bold text-slate-300 mb-6">PENGEMBANG INVASI SMKN 1 JAPARA</p>
            
            <div class="flex flex-col items-center gap-4">
                <p class="text-[9px] text-slate-500 uppercase tracking-widest">Bekerja Sama Dengan</p>
                <div class="flex flex-wrap justify-center items-center gap-6">
                    <div class="text-center">
                        <span class="text-[11px] font-bold text-slate-400 block">Schneider Electric</span>
                        <span class="text-[8px] text-slate-500">Indonesia</span>
                    </div>
                    <div class="h-4 w-[1px] bg-slate-700"></div>
                    <div class="text-center">
                        <span class="text-[11px] font-bold text-slate-400 block">PT. Bisnis Digital Ekonomi</span>
                        <span class="text-[8px] text-slate-500">(BIDEKO)</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Alert Custom -->
    <div id="alertBox" class="fixed bottom-10 right-5 transform translate-x-[120%] transition-transform duration-500 z-50">
        <div class="bg-slate-800 border-l-4 border-red-500 text-white px-6 py-4 rounded-lg shadow-2xl flex items-center space-x-4">
            <i class="fas fa-exclamation-circle text-red-500 text-xl"></i>
            <div>
                <p class="text-xs font-bold text-red-500 uppercase">Akses Ditolak</p>
                <p id="alertMessage" class="text-sm text-slate-300"></p>
            </div>
        </div>
    </div>

    <script>
        function togglePassword() {
            const pwdInput = document.getElementById('password');
            const eyeIcon = document.getElementById('eyeIcon');
            if (pwdInput.type === 'password') {
                pwdInput.type = 'text';
                eyeIcon.className = 'fas fa-eye-slash';
            } else {
                pwdInput.type = 'password';
                eyeIcon.className = 'fas fa-eye';
            }
        }

        document.getElementById('loginForm').addEventListener('submit', function(e) {
            e.preventDefault();
            const user = document.getElementById('username').value;
            const pass = document.getElementById('password').value;

            // Simulasi Login
            if (user === "admin" && pass === "japara2024") {
                showAlert("Berhasil! Mengalihkan ke Dashboard...", true);
                setTimeout(() => {
                    // Ganti dengan URL Dashboard sebenarnya
                    window.location.href = "#"; 
                }, 1500);
            } else {
                showAlert("Username atau password salah. Silakan hubungi admin IT.");
            }
        });

        function showAlert(msg, isSuccess = false) {
            const alertBox = document.getElementById('alertBox');
            const alertMsg = document.getElementById('alertMessage');
            const border = alertBox.querySelector('div');
            
            if(isSuccess) {
                border.classList.replace('border-red-500', 'border-blue-500');
                alertBox.querySelector('i').classList.replace('text-red-500', 'text-blue-500');
                alertBox.querySelector('p').innerText = "Akses Berhasil";
                alertBox.querySelector('p').classList.replace('text-red-500', 'text-blue-500');
            } else {
                border.classList.replace('border-blue-500', 'border-red-500');
                alertBox.querySelector('i').classList.replace('text-blue-500', 'text-red-500');
                alertBox.querySelector('p').innerText = "Akses Ditolak";
                alertBox.querySelector('p').classList.replace('text-blue-500', 'text-red-500');
            }

            alertMsg.innerText = msg;
            alertBox.classList.remove('translate-x-[120%]');
            
            setTimeout(() => {
                alertBox.classList.add('translate-x-[120%]');
            }, 3000);
        }
    </script>
</body>
</html>
