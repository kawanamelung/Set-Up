#!/anaconda3/bin/python

from PyPDF2 import PdfFileMerger
import glob
import sys


pdfs = glob.glob("*.pdf")
failed = []
mergetool = PdfFileMerger()

for pdf in pdfs:
    try:
        mergetool.append(pdf)
    except:
        pdfs.remove(pdf)
        print('Failed to merge: ' + pdf)
        failed.append(pdf)

# naming your merged pdf
if len(sys.argv) == 1:
    filename = 'mergedpdf.pdf'
else:
    filename = sys.argv[1] + ".pdf"

# failed files
if not failed:
    print('The follwing files didn\' print:')
    for failure in failed:
        print(failure)

# create file
mergetool.write(filename)
print('Cool! You merged {} pdfs into {}!'.format(len(pdfs), filename))
