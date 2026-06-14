; =========================================================
; Game Engine Function: _ZN17CVehicleRecording33SetRecordingToPointClosestToCoorsEi7CVector
; Address            : 0x322060 - 0x3220EE
; =========================================================

322060:  PUSH            {R7,LR}
322062:  MOV             R7, SP
322064:  LDR.W           R12, =(_ZN17CVehicleRecording18PlaybackBufferSizeE_ptr - 0x32206C)
322068:  ADD             R12, PC; _ZN17CVehicleRecording18PlaybackBufferSizeE_ptr
32206A:  LDR.W           R12, [R12]; CVehicleRecording::PlaybackBufferSize ...
32206E:  LDR.W           R12, [R12,R0,LSL#2]
322072:  CMP.W           R12, #1
322076:  IT LT
322078:  POPLT           {R7,PC}
32207A:  LDR.W           LR, =(_ZN17CVehicleRecording15pPlaybackBufferE_ptr - 0x32208C)
32207E:  VMOV            S6, R3
322082:  LDR             R3, =(_ZN17CVehicleRecording13PlaybackIndexE_ptr - 0x322092)
322084:  VMOV            S0, R1
322088:  ADD             LR, PC; _ZN17CVehicleRecording15pPlaybackBufferE_ptr
32208A:  VMOV            S4, R2
32208E:  ADD             R3, PC; _ZN17CVehicleRecording13PlaybackIndexE_ptr
322090:  VLDR            S2, =1000000.0
322094:  LDR.W           R1, [LR]; CVehicleRecording::pPlaybackBuffer ...
322098:  MOVS            R2, #0
32209A:  LDR.W           LR, [R3]; CVehicleRecording::PlaybackIndex ...
32209E:  LDR.W           R1, [R1,R0,LSL#2]
3220A2:  ADDS            R3, R1, R2
3220A4:  VLDR            S8, [R3,#0x14]
3220A8:  VLDR            S10, [R3,#0x18]
3220AC:  VSUB.F32        S8, S0, S8
3220B0:  VLDR            S12, [R3,#0x1C]
3220B4:  VSUB.F32        S10, S4, S10
3220B8:  VSUB.F32        S12, S6, S12
3220BC:  VMUL.F32        S8, S8, S8
3220C0:  VMUL.F32        S10, S10, S10
3220C4:  VMUL.F32        S12, S12, S12
3220C8:  VADD.F32        S8, S8, S10
3220CC:  VADD.F32        S8, S8, S12
3220D0:  VSQRT.F32       S8, S8
3220D4:  VCMPE.F32       S8, S2
3220D8:  VMRS            APSR_nzcv, FPSCR
3220DC:  ITT LT
3220DE:  STRLT.W         R2, [LR,R0,LSL#2]
3220E2:  VMOVLT.F32      S2, S8
3220E6:  ADDS            R2, #0x20 ; ' '
3220E8:  CMP             R2, R12
3220EA:  BLT             loc_3220A2
3220EC:  POP             {R7,PC}
