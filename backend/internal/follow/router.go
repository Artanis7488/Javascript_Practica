package follow_test

import (
	"database/sql"

	"github.com/go-chi/chi"
	"github.com/unmsmfisi-socialapplication/social_app/internal/follow/application"
	"github.com/unmsmfisi-socialapplication/social_app/internal/follow/infrastructure"
)

func FollowModuleRouter(dbInstance *sql.DB) *chi.Mux {

	r := chi.NewRouter()

	followerRepo := infrastructure.NewFollowerRepository(dbInstance)
	followerUseCase := application.NewFollowerUseCase(followerRepo)
	followHandler := infrastructure.NewFollowerHandler(followerUseCase)

	r.Post("/", followHandler.FollowProfile)

	return r
}
