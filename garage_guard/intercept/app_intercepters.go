package intercept

import (
	"context"
	"garage_guard/proto/gen/app_api_service/v1/appApiServicev1connect"

	"connectrpc.com/connect"
)

func AppAuthIntercepter() connect.UnaryInterceptorFunc {
	interceptor := func(next connect.UnaryFunc) connect.UnaryFunc {
		skipRpc := map[string]bool{
			appApiServicev1connect.AppApiServiceConnectionCheckProcedure: true,
			appApiServicev1connect.AppApiServiceRegisterUserProcedure:    true,
			appApiServicev1connect.AppApiServiceSignInProcedure:          true,
		}
		return connect.UnaryFunc(func(ctx context.Context, req connect.AnyRequest) (connect.AnyResponse, error) {
			if skipRpc[req.Spec().Procedure] {
				return next(ctx, req)
			}
			return next(ctx, req)
			// jwt := req.Header().Get("jwt")

			// if jwt == "" {
			// 	return nil, connect.NewError(connect.CodeUnauthenticated, errors.New("missing authentication"))
			// }
			// //checks if the jwt is valid
			// body, err := helpers.CheckJwt([]byte(jwt))
			// if err != nil {
			// 	return nil, connect.NewError(connect.CodeInvalidArgument, errors.New("incorrect authentication"))
			// }

			// if time.Now().Compare(body.ExpiresAt) >= 0 {
			// 	return nil, connect.NewError(connect.CodePermissionDenied, errors.New("expired authentication"))
			// }
			ctx = context.WithValue(ctx, "jwtBody", body)

			// return next(ctx, req)
		})

	}
	return connect.UnaryInterceptorFunc(interceptor)
}
