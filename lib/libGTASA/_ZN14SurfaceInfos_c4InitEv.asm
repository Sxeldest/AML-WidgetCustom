; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c4InitEv
; Address            : 0x41C390 - 0x41C3B6
; =========================================================

41C390:  PUSH            {R4,R6,R7,LR}
41C392:  ADD             R7, SP, #8
41C394:  MOV             R4, R0
41C396:  ADD.W           R0, R4, #0x90
41C39A:  MOVW            R1, #0x9CC
41C39E:  BLX             j___aeabi_memclr8_0
41C3A2:  MOV             R0, R4; this
41C3A4:  BLX             j__ZN14SurfaceInfos_c18LoadAdhesiveLimitsEv; SurfaceInfos_c::LoadAdhesiveLimits(void)
41C3A8:  MOV             R0, R4; this
41C3AA:  BLX             j__ZN14SurfaceInfos_c16LoadSurfaceInfosEv; SurfaceInfos_c::LoadSurfaceInfos(void)
41C3AE:  MOV             R0, R4; this
41C3B0:  POP.W           {R4,R6,R7,LR}
41C3B4:  B               _ZN14SurfaceInfos_c21LoadSurfaceAudioInfosEv; SurfaceInfos_c::LoadSurfaceAudioInfos(void)
