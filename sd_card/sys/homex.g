; homex.g
; called to home the X axis
;
; generated by RepRapFirmware Configuration Tool v2 on Wed Jan 23 2019 18:47:00 GMT-0700 (Mountain Standard Time)
G91               ; relative positioning

;G1 S2 Z25 F1000 ; lift Z relative to current position

; Home proximal arm
G1 S1 X-200 Y200 F1000	; home proximal and distal arms
G1 S2 X+5 Y-5 F1000
G1 S1 X-10 Y10 F200

G90
G1 S2 X-80 Y150 F4500	; move arms to safe position to home Z
G91



