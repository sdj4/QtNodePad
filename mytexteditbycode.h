#ifndef MYTEXTEDITBYCODE_H
#define MYTEXTEDITBYCODE_H

#include <QScrollBar>
#include <QTextBrowser>
#include <QTextEdit>
#include <QWidget>

class MyTextEditByCode : public QWidget
{
    Q_OBJECT
public:
    explicit MyTextEditByCode(QWidget *parent = nullptr);
    ~MyTextEditByCode();

private slots:
    void onTextEditHorizontalScrollBarChanged();
    void onTextEditVerticalScrollBarChanged();
    void onScrollBarChanged();
    void onTextBrowserHorizontalScrollBarChanged();

    void onTextChanged();

    void highlightCurrentLine();

private:
    QTextEdit *textEdit ;
    QTextBrowser *textBrowser;
    QScrollBar *scrollBar ;
    QFont mFont;

    void initWidget();
    void initFont();
    void initConnection();
    void initHighlighter();
signals:

};

#endif // MYTEXTEDITBYCODE_H
