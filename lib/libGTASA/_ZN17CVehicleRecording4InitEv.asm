; =========================================================
; Game Engine Function: _ZN17CVehicleRecording4InitEv
; Address            : 0x321BDC - 0x321C54
; =========================================================

321BDC:  LDR             R0, =(_ZN17CVehicleRecording15bPlaybackPausedE_ptr - 0x321BE8)
321BDE:  VMOV.I32        Q8, #0
321BE2:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x321BEC)
321BE4:  ADD             R0, PC; _ZN17CVehicleRecording15bPlaybackPausedE_ptr
321BE6:  LDR             R3, =(_ZN17CVehicleRecording15pPlaybackBufferE_ptr - 0x321BF2)
321BE8:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
321BEA:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x321BF6)
321BEC:  LDR             R0, [R0]; CVehicleRecording::bPlaybackPaused ...
321BEE:  ADD             R3, PC; _ZN17CVehicleRecording15pPlaybackBufferE_ptr
321BF0:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
321BF2:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
321BF4:  LDR.W           R12, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x321C04)
321BF8:  VST1.8          {D16-D17}, [R0]
321BFC:  ADD.W           R0, R2, #0x30 ; '0'
321C00:  ADD             R12, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
321C02:  VST1.32         {D16-D17}, [R0]
321C06:  ADD.W           R0, R2, #0x20 ; ' '
321C0A:  LDR             R3, [R3]; CVehicleRecording::pPlaybackBuffer ...
321C0C:  VST1.32         {D16-D17}, [R0]
321C10:  ADD.W           R0, R3, #0x30 ; '0'
321C14:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
321C16:  VST1.32         {D16-D17}, [R0]
321C1A:  ADD.W           R0, R3, #0x20 ; ' '
321C1E:  LDR.W           R12, [R12]; CVehicleRecording::StreamingArray ...
321C22:  VST1.32         {D16-D17}, [R2]!
321C26:  VST1.32         {D16-D17}, [R0]
321C2A:  ADD.W           R0, R12, #0xC
321C2E:  VST1.32         {D16-D17}, [R3]!
321C32:  VST1.8          {D16-D17}, [R1]
321C36:  MOVW            R1, #0x1DB
321C3A:  VST1.32         {D16-D17}, [R2]
321C3E:  MOVS            R2, #0
321C40:  VST1.32         {D16-D17}, [R3]
321C44:  STRB            R2, [R0]
321C46:  SUBS            R1, #1
321C48:  STR.W           R2, [R0,#-8]
321C4C:  ADD.W           R0, R0, #0x10
321C50:  BNE             loc_321C44
321C52:  BX              LR
