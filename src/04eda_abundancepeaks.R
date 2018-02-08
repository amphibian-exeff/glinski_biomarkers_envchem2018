amplitudes <- read.csv(paste(dag_csv_in,"MB_10_End_result_amplitudes.csv",sep=""))
#View(amplitudes)

dim(amplitudes)
colnames(amplitudes)

control_vars <- c("Con_10_p_1", "Con_11_p_1", "Con_12_p_1", "Con_2_p_1", "Con_3_p_2",
                  "Con_4_p_2", "Con_5_p_2", "Con_6_p_2", "Con_7_p_1", "Con_8_p_1", "Con_9_p_1")
control_data <- amplitudes[control_vars]
dim(control_data)

bif_vars <- c("Bif_10_1_p_1", "Bif_10_2_p_2", "Bif_10_3_p_2", "Bif_10_4_p_1",
              "Bif_10_5_p_2", "Bif_10_6_p_1", "Bif_10_7_p_2", "Bif_10_8_p_2")
bif_data <- amplitudes[bif_vars]
dim(bif_data)

mb_vars <- c("Mb_10_1_p_1", "Mb_10_2_p_2", "Mb_10_3_p_1", "Mb_10_4_p_1", "Mb_10_5_p_1",
             "Mb_10_6_p_1", "Mb_10_7_p_1", "Mb_10_8_p_1")
mb_data <- amplitudes[mb_vars]
dim(mb_data)

met_vars <- c("Met_10_1_p_1", "Met_10_2_p_2", "Met_10_3_p_1", "Met_10_4_p_2", "Met_10_5_p_2",
              "Met_10_6_p_2", "Met_10_7_p_2", "Met_10_8_p_1")
met_data <- amplitudes[met_vars]
dim(met_data)

tb_vars <- c("Tb_10_1_p_1", "Tb_10_2_p_1", "Tb_10_3_p_1", "Tb_10_4_p_1", "Tb_10_5_p_1", 
             "Tb_10_6_p_1", "Tb_10_7_p_1", "Tb_10_7_p_2", "Tb_10_8_p_3")
tb_data <- amplitudes[tb_vars]
dim(tb_data)

tdn_vars <- c("Tdn_10_1_p_2", "Tdn_10_2_p_1", "Tdn_10_3_p_2", "Tdn_10_4_p_1", "Tdn_10_5_p_2", 
              "Tdn_10_6_p_1", "Tdn_10_7_p_2", "Tdn_10_8_p_2")
tdn_data <- amplitudes[tdn_vars]
dim(tdn_data)

tm_vars <- c("Tm_10_1_p_1", "Tm_10_2_p_1", "Tm_10_3_p_1", "Tm_10_4_p_1", "Tm_10_5_p_1", 
             "Tm_10_6_p_1", "Tm_10_6_p_2", "Tm_10_7_p_1", "Tm_10_8_p_1")
tm_data <- amplitudes[tm_vars]
dim(tm_data)

tmb_vars <- c("Tmb_10_1_p_1", "Tmb_10_2_p_1", "Tmb_10_2_p_2", "Tmb_10_3_p_1", "Tmb_10_4_p_1",
              "Tmb_10_5_p_1", "Tmb_10_6_p_1", "Tmb_10_7_p_2", "Tmb_10_8_p_1")
tmb_data <- amplitudes[tmb_vars]
dim(tmb_data)

