// +build !linux

TEXT ·asm(SB),$0-0
  MOVQ $34,RET(FP)
  RET
