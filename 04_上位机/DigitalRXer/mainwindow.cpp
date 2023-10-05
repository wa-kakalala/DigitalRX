#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QBitmap>
#include <QPainter>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    //设置关于窗体为圆角
    this->setFixedSize(500,500);

    QBitmap bmp(this->size());

    bmp.fill(QColor(255,0,0));

    QPainter p(&bmp);

    p.setPen(Qt::NoPen);

    p.setBrush(Qt::black);

    p.drawRoundedRect(bmp.rect(),20,20);

    setMask(bmp);
}

MainWindow::~MainWindow()
{
    delete ui;
}

