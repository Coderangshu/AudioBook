from gtts import gTTS
import PyPDF2

with open("sample.pdf","rb") as f:
    pdf = PyPDF2.PdfFileReader(f)
    myText = ""
    for num in range(pdf.numPages):
        po = pdf.getPage(num)
        myText += po.extractText()

print(myText)

fo = gTTS(text=myText, lang = 'en')

fo.save("sampleAudio.mp3")