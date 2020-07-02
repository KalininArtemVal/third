//
//  RadioViewController.swift
//  Course2Week4Task1
//
//  Copyright © 2018 e-Legion. All rights reserved.
//

import UIKit

class RadioViewController: UIViewController {
    
    private var portraitConstraints = [NSLayoutConstraint]()
    private var landscapeConstraints = [NSLayoutConstraint]()
    private var sharedConstraints = [NSLayoutConstraint]()
    
    let imageTimberlake = UIImage(named: "sute.jpg")
    var imageView = UIImageView()
    var musicTitle = UILabel()
    var musicSlider = UISlider()
    var volumeSlider = UISlider()
    var progressView = UIProgressView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupObjects()
        addConstraint()
//                NSLayoutConstraint.activate(sharedConstraints)
        layoutTrait(traitCollection: UIScreen.main.traitCollection)
    }
    
    // устанавливаем значения для объектов
    func setupObjects() {
        //MARK: - ImageLable
        imageView = UIImageView(image: imageTimberlake)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        
        //MARK: - MusicSlider
        progressView.progressViewStyle = .default
        progressView.setProgress(0.5, animated: true)
        progressView.progressTintColor = .blue
        progressView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(progressView)
        
        //MARK: - musicTitle
        musicTitle = UILabel()
        musicTitle.textColor = .black
        musicTitle.font = .systemFont(ofSize: 22, weight: .medium)
        musicTitle.textAlignment = .center
        musicTitle.text = "Justin Timberlake - Mirrors"
        musicTitle.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(musicTitle)
        
        //MARK: - VolumeSlider
        volumeSlider.minimumValue = 0.0
        volumeSlider.maximumValue = 100.0
        volumeSlider.value = 50.0
        volumeSlider.tintColor = .blue
        volumeSlider.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(volumeSlider)
    }
    
    // Устанавливаем констрейнты
    func addConstraint() {
        //MARK: - VerticalConstraint
        portraitConstraints.append(contentsOf: [
            //Image
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            imageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            imageView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            imageView.bottomAnchor.constraint(equalTo: progressView.safeAreaLayoutGuide.topAnchor, constant: -30),
            //Music
            progressView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            progressView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            progressView.bottomAnchor.constraint(equalTo: musicTitle.topAnchor, constant: 50),
            //Title
            musicTitle.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            musicTitle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            musicTitle.bottomAnchor.constraint(equalTo: volumeSlider.topAnchor, constant: 50),
            //Volume
            volumeSlider.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            volumeSlider.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16)
        ])
        
        //MARK: - HorizontalConstraint
        landscapeConstraints.append(contentsOf: [
            //Music
            progressView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            progressView.bottomAnchor.constraint(equalTo: imageView.topAnchor, constant: -16),
            //Image
            imageView.bottomAnchor.constraint(equalTo: volumeSlider.topAnchor, constant: -16),
            //Volume
            volumeSlider.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16),
            //Title
            musicTitle.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 16),
            musicTitle.topAnchor.constraint(equalTo: progressView.bottomAnchor, constant: 150)
        ])
        
        
        //MARK: - SharedConstraint
        sharedConstraints.append(contentsOf: [
            //Music
            progressView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            progressView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            progressView.heightAnchor.constraint(equalToConstant: 2),
            //Image
            imageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor),
            //Volume
            volumeSlider.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            volumeSlider.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            volumeSlider.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -24)
        ])
    }
    
    //задаём условия для работы с констрейнтами в вертикальном и горизонтальном положении
    func layoutTrait(traitCollection: UITraitCollection) {
        let needDeactivatePortrait =
            !portraitConstraints.isEmpty && portraitConstraints.first?.isActive ?? false
        let needDeactivateLandscape =
            !landscapeConstraints.isEmpty && landscapeConstraints.first?.isActive ?? false
        if !(sharedConstraints.first?.isActive ?? true) {
            NSLayoutConstraint.activate(sharedConstraints)
        }
        if traitCollection.horizontalSizeClass == .compact && traitCollection.verticalSizeClass == .regular {
            if needDeactivateLandscape {
                NSLayoutConstraint.deactivate(landscapeConstraints)
            }
            NSLayoutConstraint.activate(portraitConstraints)
        } else {
            if needDeactivatePortrait {
                NSLayoutConstraint.deactivate(portraitConstraints)
            }
            NSLayoutConstraint.activate(landscapeConstraints)
        }
    }
    
    // Функция для реагирования на изменения ориентации
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        layoutTrait(traitCollection: traitCollection)
    }
}



























