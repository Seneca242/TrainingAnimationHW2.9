//
//  DataManager.swift
//  TrainingAnimationHW2.9
//
//  Created by Дмитрий Дмитрий on 02.09.2021.
//
import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animationEffects = Spring.AnimationPreset.allCases
    let curveEffects = Spring.AnimationCurve.allCases
    
    private init() {}
}
