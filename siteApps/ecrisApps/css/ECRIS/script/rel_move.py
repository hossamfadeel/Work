from org.csstudio.opibuilder.scriptUtil import PVUtil
import time

sys = widget.getMacroValue("SYS")
subsys = widget.getMacroValue("SUBSYS")
dev= widget.getMacroValue("DEV")

text_pos = "text_rel_pos"
val_pos=display.getWidget(text_pos).getPropertyValue("text")

pv_name_set_angle = sys + "-" + subsys + ":" + dev + ":SEQ:Arel"
PVUtil.writePV(pv_name_set_angle, val_pos)

time.sleep(0.5);

pv_name_move = sys + "-" + subsys + ":" + dev + ":SEQ:Mrel"
PVUtil.writePV(pv_name_move, "1")
