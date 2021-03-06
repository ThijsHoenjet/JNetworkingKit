import Foundation

protocol MovieGateway {
    func getMovie(onSuccess: @escaping (Movie) -> Void, onError: @escaping (Error) -> Void)
}

extension Gateway: MovieGateway {
    @objc func getMovie(onSuccess: @escaping (Movie) -> Void, onError: @escaping (Error) -> Void) {
        MovieDetailRequestOperation().execute(onSuccess: onSuccess, onError: onError)
    }
}
