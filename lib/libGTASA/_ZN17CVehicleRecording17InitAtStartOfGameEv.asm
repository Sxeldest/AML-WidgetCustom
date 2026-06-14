; =========================================================
; Game Engine Function: _ZN17CVehicleRecording17InitAtStartOfGameEv
; Address            : 0x321B34 - 0x321BC2
; =========================================================

321B34:  LDR             R0, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x321B40)
321B36:  MOVW            R1, #0x1DB
321B3A:  MOVS            R2, #0
321B3C:  ADD             R0, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
321B3E:  LDR             R0, [R0]; CVehicleRecording::StreamingArray ...
321B40:  ADDS            R0, #4
321B42:  STR.W           R2, [R0],#0x10
321B46:  SUBS            R1, #1
321B48:  BNE             loc_321B42
321B4A:  LDR             R0, =(_ZN17CVehicleRecording15bPlaybackPausedE_ptr - 0x321B56)
321B4C:  VMOV.I32        Q8, #0
321B50:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x321B5A)
321B52:  ADD             R0, PC; _ZN17CVehicleRecording15bPlaybackPausedE_ptr
321B54:  LDR             R3, =(_ZN17CVehicleRecording15pPlaybackBufferE_ptr - 0x321B60)
321B56:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
321B58:  LDR             R1, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x321B64)
321B5A:  LDR             R0, [R0]; CVehicleRecording::bPlaybackPaused ...
321B5C:  ADD             R3, PC; _ZN17CVehicleRecording15pPlaybackBufferE_ptr
321B5E:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
321B60:  ADD             R1, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
321B62:  LDR.W           R12, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x321B72)
321B66:  VST1.8          {D16-D17}, [R0]
321B6A:  ADD.W           R0, R2, #0x30 ; '0'
321B6E:  ADD             R12, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
321B70:  VST1.32         {D16-D17}, [R0]
321B74:  ADD.W           R0, R2, #0x20 ; ' '
321B78:  LDR             R3, [R3]; CVehicleRecording::pPlaybackBuffer ...
321B7A:  VST1.32         {D16-D17}, [R0]
321B7E:  ADD.W           R0, R3, #0x30 ; '0'
321B82:  LDR             R1, [R1]; CVehicleRecording::bPlaybackGoingOn ...
321B84:  VST1.32         {D16-D17}, [R0]
321B88:  ADD.W           R0, R3, #0x20 ; ' '
321B8C:  LDR.W           R12, [R12]; CVehicleRecording::StreamingArray ...
321B90:  VST1.32         {D16-D17}, [R2]!
321B94:  VST1.32         {D16-D17}, [R0]
321B98:  ADD.W           R0, R12, #0xC
321B9C:  VST1.32         {D16-D17}, [R3]!
321BA0:  VST1.8          {D16-D17}, [R1]
321BA4:  MOVW            R1, #0x1DB
321BA8:  VST1.32         {D16-D17}, [R2]
321BAC:  MOVS            R2, #0
321BAE:  VST1.32         {D16-D17}, [R3]
321BB2:  STRB            R2, [R0]
321BB4:  SUBS            R1, #1
321BB6:  STR.W           R2, [R0,#-8]
321BBA:  ADD.W           R0, R0, #0x10
321BBE:  BNE             loc_321BB2
321BC0:  BX              LR
