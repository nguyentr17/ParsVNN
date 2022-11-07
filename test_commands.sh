# Train drugcell

python train_drugcell.py -onto ./data/go_bp_drugcell_min10_merge30_depth5_ontology.txt -gene2id ./data/cell_mutations_bp_gene2id.txt -drug2id ./data/drug_fingerprints_drug2id.txt -cell2id ./data/cell_mutations_cell2id.txt -train ./data/drugcell_LUNG_train.txt -test ./data/drugcell_LUNG_test.txt -model ./model -cellline ./data/cell_mutations_bp_matrix.txt -fingerprint ./data/drug_fingerprints_matrix.txt -genotype_hiddens 6 -drug_hiddens 100,50,6 -final_hiddens 6 \
-epoch 100 -batchsize 5000 > train_drugcell_lung.log


python train_drugcell_prune.py -onto ./data/go_bp_drugcell_min10_merge30_depth5_ontology.txt -gene2id ./data/cell_mutations_bp_gene2id.txt -drug2id ./data/drug_fingerprints_drug2id.txt -cell2id ./data/cell_mutations_cell2id.txt -train ./data/drugcell_LUNG_train.txt -test ./data/drugcell_LUNG_test.txt -model ./model -cellline ./data/cell_mutations_bp_matrix.txt -fingerprint ./data/drug_fingerprints_matrix.txt -genotype_hiddens 6 -drug_hiddens 100,50,6 -final_hiddens 6 \
-pretrained_model ./model/model_final -epoch 30 -batchsize 5000 > train_drugcell_prune_lung.log