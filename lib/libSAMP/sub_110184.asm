; =========================================================
; Game Engine Function: sub_110184
; Address            : 0x110184 - 0x1101A2
; =========================================================

110184:  PUSH            {R4,R6,R7,LR}
110186:  ADD             R7, SP, #8
110188:  MOV             R4, R0
11018A:  LDR             R0, =(_ZTVN15descent_builder9builder_tI12VehicleSkateEE - 0x110192); `vtable for'descent_builder::builder_t<VehicleSkate> ...
11018C:  MOVS            R2, #0
11018E:  ADD             R0, PC; `vtable for'descent_builder::builder_t<VehicleSkate>
110190:  ADDS            R0, #8
110192:  STRD.W          R0, R2, [R4]
110196:  MOV             R0, R1
110198:  MOV             R1, R4
11019A:  BL              sub_ECD64
11019E:  MOV             R0, R4
1101A0:  POP             {R4,R6,R7,PC}
