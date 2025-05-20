import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["jumpTime", "speedSelect", "jumpTotalCount", "walkCount", "totalDistance"]

  connect() {
    this.updateJumpTotal()
    this.updateDistance()
  }

  updateJumpTotal() {
    const time = parseInt(this.jumpTimeTarget.value)
    const speedMap = { slow: 100, normal: 140, fast: 180 }
    const speed = speedMap[this.speedSelectTarget.value]

    if (!isNaN(time) && speed) {
      const total = time * speed
      this.jumpTotalCountTarget.value = total
    } else {
      this.jumpTotalCountTarget.value = ""
    }

    this.updateDistance()
  }

  updateDistance() {
    // 累計縄跳び回数の取得（整数に変換）
    const jumpTotal = parseInt(this.jumpTotalCountTarget.value)
    // 歩数の取得（整数に変換）
    const walk = parseInt(this.walkCountTarget.value)

    // 縄跳び距離の計算（未入力なら0）
    const jumpDistance = !isNaN(jumpTotal) ? jumpTotal * 1.2 : 0
    // 歩数距離の計算（未入力なら0）
    const walkDistance = !isNaN(walk) ? walk * 0.0007 * 760 : 0
    // 合計距離（km）
    const total = jumpDistance + walkDistance
    // 合計距離が0より大きければ表示、小さければ空にする
    if (jumpDistance > 0 || walkDistance > 0) {
      this.totalDistanceTarget.value = Math.floor(total)
    } else {
      this.totalDistanceTarget.value = ""
    }
  }
}
