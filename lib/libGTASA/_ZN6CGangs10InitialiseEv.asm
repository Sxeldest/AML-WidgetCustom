; =========================================================
; Game Engine Function: _ZN6CGangs10InitialiseEv
; Address            : 0x49EE98 - 0x49EED6
; =========================================================

49EE98:  LDR             R0, =(_ZN6CGangs4GangE_ptr - 0x49EEA6)
49EE9A:  MOV.W           R12, #0x1C
49EE9E:  MOVS            R2, #0x16
49EEA0:  MOVS            R3, #0
49EEA2:  ADD             R0, PC; _ZN6CGangs4GangE_ptr
49EEA4:  MOVS            R1, #0x18
49EEA6:  LDR             R0, [R0]; CGangs::Gang ...
49EEA8:  STRD.W          R2, R12, [R0,#(dword_9ECE38 - 0x9ECE34)]
49EEAC:  STR             R3, [R0,#(dword_9ECE40 - 0x9ECE34)]
49EEAE:  STRD.W          R2, R3, [R0,#(dword_9ECE48 - 0x9ECE34)]
49EEB2:  STR             R3, [R0,#(dword_9ECE50 - 0x9ECE34)]
49EEB4:  STRD.W          R2, R3, [R0,#(dword_9ECE58 - 0x9ECE34)]
49EEB8:  STR             R3, [R0,#(dword_9ECE60 - 0x9ECE34)]
49EEBA:  STRD.W          R2, R12, [R0,#(dword_9ECE78 - 0x9ECE34)]
49EEBE:  STR             R3, [R0,#(dword_9ECE80 - 0x9ECE34)]
49EEC0:  STRD.W          R1, R3, [R0,#(dword_9ECE88 - 0x9ECE34)]
49EEC4:  MOVS            R1, #0x1E
49EEC6:  STR             R3, [R0,#(dword_9ECE90 - 0x9ECE34)]
49EEC8:  STRD.W          R2, R1, [R0,#(dword_9ECE98 - 0x9ECE34)]
49EECC:  STR             R3, [R0,#(dword_9ECEA0 - 0x9ECE34)]
49EECE:  STRD.W          R2, R12, [R0,#(dword_9ECEA8 - 0x9ECE34)]
49EED2:  STR             R3, [R0,#(dword_9ECEB0 - 0x9ECE34)]
49EED4:  BX              LR
