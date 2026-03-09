; =========================================================
; MAGIC CHESS CONTROLLER - W, F, A (CLEAN VERSION)
; Update: 
; - Angka 1-8 DIHAPUS (Agar aman untuk Script Python)
; - W = Hold Click (Drag)
; - F = Tap Click
; - A = Tap Click (Koordinat 1574, 802)
; - S = Tap Click (Updated: 1559, 39)
; =========================================================

#NoEnv
#SingleInstance Force
SetBatchLines, -1        ; Proses script secepat processor mampu
SetMouseDelay, -1        ; Gerakan mouse instan
SetKeyDelay, -1          ; Input tombol instan
CoordMode, Mouse, Client

; --- STATUS AWAL: OFF ---
ModeMain := 0 

; --- TOMBOL PENGATUR ---
F1::
    ModeMain := !ModeMain
    if (ModeMain) {
        SoundBeep, 1000, 100 ; ON (Bunyi Tinggi)
    } else {
        SoundBeep, 500, 100  ; OFF (Bunyi Rendah)
    }
return

F10::ExitApp

; --- FUNGSI KLIK INSTAN ---
KlikCepat(TargetX, TargetY) {
    MouseMove, %TargetX%, %TargetY%, 0 
    Click ; Klik kiri instan
}

; --- ZONA TOMBOL GAME (Hanya Aktif jika ModeMain = 1) ---
#If (ModeMain = 1)

; 1. TOMBOL "I" (HOLD MODE - KOORDINAT TERTENTU)
i::
    MouseMove, 75, 689, 0      
    SendInput, {LButton Down} 
    KeyWait, i              
    SendInput, {LButton Up}    
return

; 2. TOMBOL "W" (MANUAL HOLD CLICK / DRAG)
; Tekan tahan W untuk seret hero/item, lepas untuk drop.
w::
    SendInput, {LButton Down} 
    KeyWait, w                
    SendInput, {LButton Up}    
return

; 3. TOMBOL "F" (MANUAL SINGLE CLICK)
; Pengganti klik kiri mouse biasa.
f::Click

; 4. TOMBOL "A" (SINGLE CLICK - KOORDINAT SPESIFIK)
a::KlikCepat(1574, 802)

; --- TOMBOL LAINNYA ---
s::KlikCepat(1559, 39) ; <-- Koordinat Baru
l::KlikCepat(149, 556)
t::KlikCepat(42, 350)
Esc::KlikCepat(1581, 996)
c::KlikCepat(1581, 996)

#If
