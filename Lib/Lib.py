from sklearn.metrics import confusion_matrix
import matplotlib.pyplot as plt
from numpy import newaxis
from numpy import arange
from itertools import product
import pickle

class calculate_confusion_matrix:
    def __init__(self,classes,show=False):
        self.classes = classes
        self.show = show

    def plot_confusion_matrix(self,true_class,predict_class,model_name,name):
        # Plot confusion matrix
        classes = self.classes
        conf_matrix = confusion_matrix(true_class,predict_class)
        normalized_conf_matrix = conf_matrix.astype('float') / conf_matrix.sum(axis=1)[:,newaxis] # normalize here
        plt.imshow(normalized_conf_matrix, cmap=plt.cm.Blues)

        # Add labels
        plt.title("Normalized Confusion Matrix "+name) # change title to reflect normalization
        plt.colorbar()
        tick_marks = arange(len(classes))
        plt.xticks(tick_marks, classes, rotation=45)
        plt.yticks(tick_marks, classes)

        # Add values to cells
        thresh = normalized_conf_matrix.max() / 2.
        for i, j in product(range(normalized_conf_matrix.shape[0]), range(normalized_conf_matrix.shape[1])):
            plt.text(j, i, format(normalized_conf_matrix[i, j], '.2f'), # format to display two decimal places
                    horizontalalignment="center",
                    color="white" if normalized_conf_matrix[i, j] > thresh else "black")

        plt.ylabel('True Label')
        plt.xlabel('Predicted Label')
        plt.title(model_name)
        plt.tight_layout()
        plt.savefig('CLASSIFIER/Confusion_Matrices/Confusion_Matrix_'+model_name+'_'+name+'.png')
        if self.show:
            plt.pause(3)
        plt.close()    

def save_model(model,name,relative_path=''):
    filename = relative_path+name+'_model.sav'
    pickle.dump(model, open(filename, 'wb'))