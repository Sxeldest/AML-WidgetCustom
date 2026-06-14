; =========================================================
; Game Engine Function: _ZN11CAutomobile19RemoveRefsToVehicleEP7CEntity
; Address            : 0x55D1E0 - 0x55D21A
; =========================================================

55D1E0:  LDR.W           R2, [R0,#0x8FC]
55D1E4:  CMP             R2, R1
55D1E6:  ITT EQ
55D1E8:  MOVEQ           R2, #0
55D1EA:  STREQ.W         R2, [R0,#0x8FC]
55D1EE:  LDR.W           R2, [R0,#0x900]
55D1F2:  CMP             R2, R1
55D1F4:  ITT EQ
55D1F6:  MOVEQ           R2, #0
55D1F8:  STREQ.W         R2, [R0,#0x900]
55D1FC:  LDR.W           R2, [R0,#0x904]
55D200:  CMP             R2, R1
55D202:  ITT EQ
55D204:  MOVEQ           R2, #0
55D206:  STREQ.W         R2, [R0,#0x904]
55D20A:  LDR.W           R2, [R0,#0x908]
55D20E:  CMP             R2, R1
55D210:  ITT EQ
55D212:  MOVEQ           R1, #0
55D214:  STREQ.W         R1, [R0,#0x908]
55D218:  BX              LR
