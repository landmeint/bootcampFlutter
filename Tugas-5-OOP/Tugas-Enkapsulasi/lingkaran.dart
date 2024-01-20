class Lingkaran{
  double _pi = 3.14;
  late double _r;

  void setR(double n) {
    if(n == 0) {
      n *= -1;
    }
    this._r = n;
  }

  getR() {
    return this._r;
  }

  getPi() {
    return this._pi;
  }

  hitungLuas() {
    return this._pi * this._r * this._r;
  }
}