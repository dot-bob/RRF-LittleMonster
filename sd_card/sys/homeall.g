; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v2 on Wed Jan 23 2019 18:47:00 GMT-0700 (Mountain Standard Time)
;G91                     ; relative positioning
;G1 Z5 F6000 S2          ; lift Z relative to current position
;M98 Pdeployprobe.g      ; deploy mechanical Z probe
;G1 S1 X-235 Y-215 F1800 ; move quickly to X and Y axis endstops and stop there (first pass)
;G1 X5 Y5 F6000          ; go back a few mm
;G1 S1 X-235 Y-215 F360  ; move slowly to X and Y axis endstops once more (second pass)
;G90                     ; absolute positioning
;G1 X15 Y15 F6000        ; go to first bed probe point and home Z
;G30                     ; home Z by probing the bed

; Uncomment the following lines to lift Z after probing
;G91                    ; relative positioning
;G1 S2 Z5 F100          ; lift Z relative to current position
;G90                    ; absolute positioning


;M98 Pretractprobe.g     ; retract mechanical Z probe

G91               ; relative positioning

;G1 S2 Z25 F1000 ; lift Z relative to current position

; Home proximal arm
G1 S1 X-200 Y200 F1000	; home proximal and distal arms
G1 S2 X+5 Y-5 F1000
G1 S1 X-10 Y10 F200

G90
G1 S2 X-80 Y150 F4500	; move arms to safe position to home Z
G91
