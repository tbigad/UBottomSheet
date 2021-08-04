//
//  UBottomSheetCoordinatorDelegate.swift
//  BottomSheetDemo
//
//  Created by ugur on 24.04.2020.
//  Copyright © 2020 Sobe. All rights reserved.
//

import UIKit

///Sheet delegate
public protocol UBottomSheetCoordinatorDelegate: AnyObject {
    func bottomSheet(_ container: UIView?, finishTranslateWith extraAnimation: @escaping ((_ percent: CGFloat) -> Void) -> Void)
    func bottomSheet(_ container: UIView?, didChange state: SheetTranslationState)
    func bottomSheet(_ container: UIView?, didPresent state: SheetTranslationState)
    func canHandleTapEvent() -> Bool
    func canHandlePanEvent() -> Bool
}

///Default empty implementations
extension UBottomSheetCoordinatorDelegate {
    public func bottomSheet(_ container: UIView?, finishTranslateWith extraAnimation: @escaping ((_ percent: CGFloat) -> Void) -> Void) { }
    public func bottomSheet(_ container: UIView?, didChange state: SheetTranslationState) { }
    public func bottomSheet(_ container: UIView?, didPresent state: SheetTranslationState) { }
    public func canHandleTapEvent() -> Bool { return true }
    public func canHandlePanEvent() -> Bool { return true }
}
