import numpy as np
import pandas as pd
#import h5py # for reading hdf5
import argparse
import os

parser = argparse.ArgumentParser(
    prog="ExtractHDF5",
    description="Extracts HDF5 data and saves as .csv"
)

parser.add_argument('-f', '--file_path')
parser.add_argument('-o', '--output_path')

args = parser.parse_args()

args = parser.parse_args()
print(args.file_path, args.output_path)

def find_h5_files(directory):
    h5_files = []
    for root, dirs, files in os.walk(directory):
        for filename in fnmatch.filter(files, '*.h5'):
            h5_files.append(os.path.join(root, filename))
    return h5_files

print(find_h5_files(".data/NEON/"))



# Get the HDF5 file path:
#fp = "./data/NEON/NEON_eddy-flux/NEON.D17.SJER.DP4.00200.001.2022-12.basic.20240127T000425Z.RELEASE-2024/NEON.D17.SJER.DP4.00200.001.nsae.2022-12.basic.20240122T083030Z.h5"

# read it in with h5py:
#f = h5py.File(fp)

# index the hdf5, convert to pandas
#requested_dataset = f['SJER']['dp01']['data']['ch4Conc']['000_010_09m']['rtioMoleDryCh4']
#df_requested_dataset = pd.DataFrame(np.array(requested_dataset))
