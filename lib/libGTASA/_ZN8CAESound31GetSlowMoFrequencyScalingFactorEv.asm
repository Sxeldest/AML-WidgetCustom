; =========================================================
; Game Engine Function: _ZN8CAESound31GetSlowMoFrequencyScalingFactorEv
; Address            : 0x3A8000 - 0x3A8044
; =========================================================

3A8000:  PUSH            {R7,LR}
3A8002:  MOV             R7, SP
3A8004:  VPUSH           {D8}
3A8008:  VMOV.F32        S16, #1.0
3A800C:  LDRB.W          R0, [R0,#0x56]
3A8010:  LSLS            R0, R0, #0x1B; this
3A8012:  BMI             loc_3A803A
3A8014:  BLX             j__ZN6CTimer21GetIsSlowMotionActiveEv; CTimer::GetIsSlowMotionActive(void)
3A8018:  CMP             R0, #1
3A801A:  BNE             loc_3A803A
3A801C:  LDR             R0, =(TheCamera_ptr - 0x3A8022)
3A801E:  ADD             R0, PC; TheCamera_ptr
3A8020:  LDR             R0, [R0]; TheCamera
3A8022:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
3A8026:  ADD.W           R1, R1, R1,LSL#5
3A802A:  ADD.W           R0, R0, R1,LSL#4
3A802E:  LDRH.W          R0, [R0,#0x17E]
3A8032:  CMP             R0, #0x2E ; '.'
3A8034:  IT NE
3A8036:  VMOVNE.F32      S16, #0.5
3A803A:  VMOV            R0, S16
3A803E:  VPOP            {D8}
3A8042:  POP             {R7,PC}
